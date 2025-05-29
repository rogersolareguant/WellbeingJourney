import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeing_journey/data/wellbeing_data.dart';
import 'package:wellbeing_journey/domain/model/questions_model.dart';
import 'package:wellbeing_journey/domain/repository/user_repository.dart';
import 'package:wellbeing_journey/presentation/screens/questionnaire/home_screen/home_charts.dart';

part 'questionnaire_state.dart';
part 'questionnaire_cubit.freezed.dart';

const double maxAutonomy = 35.0;
const double maxCompetence = 30.0;
const double maxRelatedness = 40.0;

class QuestionnaireCubit extends Cubit<QuestionnaireState> {
  final UserRepository _repository;

  QuestionnaireCubit({required UserRepository repository})
      : _repository = repository,
        super(QuestionnaireState(
          selectedIndexes: List.filled(wellbeingQuestions.length, -1),
        ));

  void selectIndex(int questionIndex, int selectedIndex) {
    if (questionIndex >= 0 && questionIndex < wellbeingQuestions.length) {
      final updated = [...state.selectedIndexes];
      updated[questionIndex] = selectedIndex;
      emit(state.copyWith(selectedIndexes: updated));
    }
  }

  void submitAnswers() {
    final answers = state.selectedIndexes.map((i) => i + 1).toList();
    final scores = _calculateDimensionScores(answers);

    final autonomy = scores[WellbeingDimension.autonomy]!;
    final competence = scores[WellbeingDimension.competence]!;
    final relatedness = scores[WellbeingDimension.relatedness]!;

    final overall = ((autonomy / maxAutonomy * 100) +
            (competence / maxCompetence * 100) +
            (relatedness / maxRelatedness * 100)) /
        3;

    final worstAutonomy = _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.autonomy]!, best: false, limit: 3);
    final worstCompetence = _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.competence]!, best: false, limit: 3);
    final worstRelatedness = _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.relatedness]!, best: false, limit: 3);

    emit(state.copyWith(
      autonomyScore: (autonomy / maxAutonomy * 100).round(),
      competenceScore: (competence / maxCompetence * 100).round(),
      relatednessScore: (relatedness / maxRelatedness * 100).round(),
      overall: overall.round(),
      bestAutonomy: _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.autonomy]!, best: true, limit: 3),
      worstAutonomy: worstAutonomy,
      bestCompetence: _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.competence]!, best: true, limit: 3),
      worstCompetence: worstCompetence,
      bestRelatedness: _getExtremeQuestions(scoresMap: scoresMaps[WellbeingDimension.relatedness]!, best: true, limit: 3),
      worstRelatedness: worstRelatedness,
      recommendationsAutonomy: _getRecommendationsFor(worstAutonomy),
      recommendationsCompetence: _getRecommendationsFor(worstCompetence),
      recommendationsRelatedness: _getRecommendationsFor(worstRelatedness),
      status: QuestionnaireStatus.answered,
    ));
  }

  Map<WellbeingDimension, int> _calculateDimensionScores(List<int> answers) {
    final scores = {
      WellbeingDimension.autonomy: 0,
      WellbeingDimension.competence: 0,
      WellbeingDimension.relatedness: 0,
    };

    for (int i = 0; i < wellbeingQuestions.length; i++) {
      final question = wellbeingQuestions[i];
      final answer = question.isReversed ? 6 - answers[i] : answers[i];
      scores[question.dimension] = scores[question.dimension]! + answer;

      // Save for top/worst logic
      scoresMaps[question.dimension]![i] = answer;
    }

    return scores;
  }

  final Map<WellbeingDimension, Map<int, int>> scoresMaps = {
    WellbeingDimension.autonomy: {},
    WellbeingDimension.competence: {},
    WellbeingDimension.relatedness: {},
  };

  List<WellbeingQuestion> _getExtremeQuestions({
    required Map<int, int> scoresMap,
    required bool best,
    required int limit,
  }) {
    final filtered = scoresMap.entries
        .where((e) => best ? e.value >= 4 : e.value <= 3)
        .toList()
      ..sort((a, b) =>
          best ? b.value.compareTo(a.value) : a.value.compareTo(b.value));

    return filtered.take(limit).map((e) => wellbeingQuestions[e.key]).toList();
  }

  List<String> _getRecommendationsFor(List<WellbeingQuestion> q) =>
      q.map((e) => e.recommendation).toList();

  Future<void> saveAnswersToFirebase() async {
    final answers = state.selectedIndexes.map((i) => i + 1).toList();
    try {
      await _repository.saveUserAnswers(answers);
    } catch (e) {
      throw Exception('Error saving answers to Firebase: $e');
    }
  }

  Future<void> loadHistoryFromFirebase() async {
    try {
      final results = await _repository.getUserAnswers();
      if (results.isEmpty) return;

      final history = results.map((entry) {
        final answers = List<int>.from(entry['answers']);
        final rawTimestamp = entry['timestamp'];
        final timestamp = rawTimestamp is Timestamp
            ? rawTimestamp.toDate()
            : DateTime.tryParse(rawTimestamp.toString()) ?? DateTime.now();

        final scores = _calculateDimensionScores(answers);

        final autonomy = scores[WellbeingDimension.autonomy]!;
        final competence = scores[WellbeingDimension.competence]!;
        final relatedness = scores[WellbeingDimension.relatedness]!;

        final overall = ((autonomy / maxAutonomy * 100) +
                (competence / maxCompetence * 100) +
                (relatedness / maxRelatedness * 100)) /
            3;

        return WellbeingScoreData(
          timestamp,
          overall.round(),
          (autonomy / maxAutonomy * 100).round(),
          (competence / maxCompetence * 100).round(),
          (relatedness / maxRelatedness * 100).round(),
        );
      }).toList();

      emit(state.copyWith(history: history));
    } catch (e) {
      throw Exception('Error loading history from Firebase: $e');
    }
  }

  void updateSelectedDimension(String dimension) {
  emit(state.copyWith(selectedDimension: dimension));
}


  void signOut() async {
    await _repository.signOut();
    emit(state.copyWith(status: QuestionnaireStatus.noAnswered));
  }
}
