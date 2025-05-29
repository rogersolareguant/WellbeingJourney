part of 'questionnaire_cubit.dart';

enum QuestionnaireStatus { answered, noAnswered, error }

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState({
    @Default(QuestionnaireStatus.noAnswered) QuestionnaireStatus status,
    @Default([]) List<int> selectedIndexes,
    @Default(0) int autonomyScore,
    @Default(0) int competenceScore,
    @Default(0) int relatednessScore,
    @Default(0) int overall,
    @Default([]) List<WellbeingQuestion> bestAutonomy,
    @Default([]) List<WellbeingQuestion> bestCompetence,
    @Default([]) List<WellbeingQuestion> bestRelatedness,
    @Default([]) List<WellbeingQuestion> worstAutonomy,
    @Default([]) List<WellbeingQuestion> worstCompetence,
    @Default([]) List<WellbeingQuestion> worstRelatedness,
    @Default([]) List<String> recommendationsAutonomy,
    @Default([]) List<String> recommendationsCompetence,
    @Default([]) List<String> recommendationsRelatedness,
    @Default([]) List<WellbeingScoreData> history, 
    @Default('autonomy') String selectedDimension,
  }) = _QuestionnaireState;
}

