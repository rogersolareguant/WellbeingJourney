// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireState {
  QuestionnaireStatus get status => throw _privateConstructorUsedError;
  List<int> get selectedIndexes => throw _privateConstructorUsedError;
  int get autonomyScore => throw _privateConstructorUsedError;
  int get competenceScore => throw _privateConstructorUsedError;
  int get relatednessScore => throw _privateConstructorUsedError;
  int get overall => throw _privateConstructorUsedError;
  List<WellbeingQuestion> get bestAutonomy =>
      throw _privateConstructorUsedError;
  List<WellbeingQuestion> get bestCompetence =>
      throw _privateConstructorUsedError;
  List<WellbeingQuestion> get bestRelatedness =>
      throw _privateConstructorUsedError;
  List<WellbeingQuestion> get worstAutonomy =>
      throw _privateConstructorUsedError;
  List<WellbeingQuestion> get worstCompetence =>
      throw _privateConstructorUsedError;
  List<WellbeingQuestion> get worstRelatedness =>
      throw _privateConstructorUsedError;
  List<String> get recommendationsAutonomy =>
      throw _privateConstructorUsedError;
  List<String> get recommendationsCompetence =>
      throw _privateConstructorUsedError;
  List<String> get recommendationsRelatedness =>
      throw _privateConstructorUsedError;
  List<WellbeingScoreData> get history => throw _privateConstructorUsedError;
  String get selectedDimension => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call(
      {QuestionnaireStatus status,
      List<int> selectedIndexes,
      int autonomyScore,
      int competenceScore,
      int relatednessScore,
      int overall,
      List<WellbeingQuestion> bestAutonomy,
      List<WellbeingQuestion> bestCompetence,
      List<WellbeingQuestion> bestRelatedness,
      List<WellbeingQuestion> worstAutonomy,
      List<WellbeingQuestion> worstCompetence,
      List<WellbeingQuestion> worstRelatedness,
      List<String> recommendationsAutonomy,
      List<String> recommendationsCompetence,
      List<String> recommendationsRelatedness,
      List<WellbeingScoreData> history,
      String selectedDimension});
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedIndexes = null,
    Object? autonomyScore = null,
    Object? competenceScore = null,
    Object? relatednessScore = null,
    Object? overall = null,
    Object? bestAutonomy = null,
    Object? bestCompetence = null,
    Object? bestRelatedness = null,
    Object? worstAutonomy = null,
    Object? worstCompetence = null,
    Object? worstRelatedness = null,
    Object? recommendationsAutonomy = null,
    Object? recommendationsCompetence = null,
    Object? recommendationsRelatedness = null,
    Object? history = null,
    Object? selectedDimension = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      selectedIndexes: null == selectedIndexes
          ? _value.selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      autonomyScore: null == autonomyScore
          ? _value.autonomyScore
          : autonomyScore // ignore: cast_nullable_to_non_nullable
              as int,
      competenceScore: null == competenceScore
          ? _value.competenceScore
          : competenceScore // ignore: cast_nullable_to_non_nullable
              as int,
      relatednessScore: null == relatednessScore
          ? _value.relatednessScore
          : relatednessScore // ignore: cast_nullable_to_non_nullable
              as int,
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as int,
      bestAutonomy: null == bestAutonomy
          ? _value.bestAutonomy
          : bestAutonomy // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      bestCompetence: null == bestCompetence
          ? _value.bestCompetence
          : bestCompetence // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      bestRelatedness: null == bestRelatedness
          ? _value.bestRelatedness
          : bestRelatedness // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstAutonomy: null == worstAutonomy
          ? _value.worstAutonomy
          : worstAutonomy // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstCompetence: null == worstCompetence
          ? _value.worstCompetence
          : worstCompetence // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstRelatedness: null == worstRelatedness
          ? _value.worstRelatedness
          : worstRelatedness // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      recommendationsAutonomy: null == recommendationsAutonomy
          ? _value.recommendationsAutonomy
          : recommendationsAutonomy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendationsCompetence: null == recommendationsCompetence
          ? _value.recommendationsCompetence
          : recommendationsCompetence // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendationsRelatedness: null == recommendationsRelatedness
          ? _value.recommendationsRelatedness
          : recommendationsRelatedness // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<WellbeingScoreData>,
      selectedDimension: null == selectedDimension
          ? _value.selectedDimension
          : selectedDimension // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireStateImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$QuestionnaireStateImplCopyWith(_$QuestionnaireStateImpl value,
          $Res Function(_$QuestionnaireStateImpl) then) =
      __$$QuestionnaireStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuestionnaireStatus status,
      List<int> selectedIndexes,
      int autonomyScore,
      int competenceScore,
      int relatednessScore,
      int overall,
      List<WellbeingQuestion> bestAutonomy,
      List<WellbeingQuestion> bestCompetence,
      List<WellbeingQuestion> bestRelatedness,
      List<WellbeingQuestion> worstAutonomy,
      List<WellbeingQuestion> worstCompetence,
      List<WellbeingQuestion> worstRelatedness,
      List<String> recommendationsAutonomy,
      List<String> recommendationsCompetence,
      List<String> recommendationsRelatedness,
      List<WellbeingScoreData> history,
      String selectedDimension});
}

/// @nodoc
class __$$QuestionnaireStateImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res, _$QuestionnaireStateImpl>
    implements _$$QuestionnaireStateImplCopyWith<$Res> {
  __$$QuestionnaireStateImplCopyWithImpl(_$QuestionnaireStateImpl _value,
      $Res Function(_$QuestionnaireStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedIndexes = null,
    Object? autonomyScore = null,
    Object? competenceScore = null,
    Object? relatednessScore = null,
    Object? overall = null,
    Object? bestAutonomy = null,
    Object? bestCompetence = null,
    Object? bestRelatedness = null,
    Object? worstAutonomy = null,
    Object? worstCompetence = null,
    Object? worstRelatedness = null,
    Object? recommendationsAutonomy = null,
    Object? recommendationsCompetence = null,
    Object? recommendationsRelatedness = null,
    Object? history = null,
    Object? selectedDimension = null,
  }) {
    return _then(_$QuestionnaireStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      selectedIndexes: null == selectedIndexes
          ? _value._selectedIndexes
          : selectedIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      autonomyScore: null == autonomyScore
          ? _value.autonomyScore
          : autonomyScore // ignore: cast_nullable_to_non_nullable
              as int,
      competenceScore: null == competenceScore
          ? _value.competenceScore
          : competenceScore // ignore: cast_nullable_to_non_nullable
              as int,
      relatednessScore: null == relatednessScore
          ? _value.relatednessScore
          : relatednessScore // ignore: cast_nullable_to_non_nullable
              as int,
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as int,
      bestAutonomy: null == bestAutonomy
          ? _value._bestAutonomy
          : bestAutonomy // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      bestCompetence: null == bestCompetence
          ? _value._bestCompetence
          : bestCompetence // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      bestRelatedness: null == bestRelatedness
          ? _value._bestRelatedness
          : bestRelatedness // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstAutonomy: null == worstAutonomy
          ? _value._worstAutonomy
          : worstAutonomy // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstCompetence: null == worstCompetence
          ? _value._worstCompetence
          : worstCompetence // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      worstRelatedness: null == worstRelatedness
          ? _value._worstRelatedness
          : worstRelatedness // ignore: cast_nullable_to_non_nullable
              as List<WellbeingQuestion>,
      recommendationsAutonomy: null == recommendationsAutonomy
          ? _value._recommendationsAutonomy
          : recommendationsAutonomy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendationsCompetence: null == recommendationsCompetence
          ? _value._recommendationsCompetence
          : recommendationsCompetence // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendationsRelatedness: null == recommendationsRelatedness
          ? _value._recommendationsRelatedness
          : recommendationsRelatedness // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<WellbeingScoreData>,
      selectedDimension: null == selectedDimension
          ? _value.selectedDimension
          : selectedDimension // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionnaireStateImpl implements _QuestionnaireState {
  const _$QuestionnaireStateImpl(
      {this.status = QuestionnaireStatus.noAnswered,
      final List<int> selectedIndexes = const [],
      this.autonomyScore = 0,
      this.competenceScore = 0,
      this.relatednessScore = 0,
      this.overall = 0,
      final List<WellbeingQuestion> bestAutonomy = const [],
      final List<WellbeingQuestion> bestCompetence = const [],
      final List<WellbeingQuestion> bestRelatedness = const [],
      final List<WellbeingQuestion> worstAutonomy = const [],
      final List<WellbeingQuestion> worstCompetence = const [],
      final List<WellbeingQuestion> worstRelatedness = const [],
      final List<String> recommendationsAutonomy = const [],
      final List<String> recommendationsCompetence = const [],
      final List<String> recommendationsRelatedness = const [],
      final List<WellbeingScoreData> history = const [],
      this.selectedDimension = 'autonomy'})
      : _selectedIndexes = selectedIndexes,
        _bestAutonomy = bestAutonomy,
        _bestCompetence = bestCompetence,
        _bestRelatedness = bestRelatedness,
        _worstAutonomy = worstAutonomy,
        _worstCompetence = worstCompetence,
        _worstRelatedness = worstRelatedness,
        _recommendationsAutonomy = recommendationsAutonomy,
        _recommendationsCompetence = recommendationsCompetence,
        _recommendationsRelatedness = recommendationsRelatedness,
        _history = history;

  @override
  @JsonKey()
  final QuestionnaireStatus status;
  final List<int> _selectedIndexes;
  @override
  @JsonKey()
  List<int> get selectedIndexes {
    if (_selectedIndexes is EqualUnmodifiableListView) return _selectedIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIndexes);
  }

  @override
  @JsonKey()
  final int autonomyScore;
  @override
  @JsonKey()
  final int competenceScore;
  @override
  @JsonKey()
  final int relatednessScore;
  @override
  @JsonKey()
  final int overall;
  final List<WellbeingQuestion> _bestAutonomy;
  @override
  @JsonKey()
  List<WellbeingQuestion> get bestAutonomy {
    if (_bestAutonomy is EqualUnmodifiableListView) return _bestAutonomy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestAutonomy);
  }

  final List<WellbeingQuestion> _bestCompetence;
  @override
  @JsonKey()
  List<WellbeingQuestion> get bestCompetence {
    if (_bestCompetence is EqualUnmodifiableListView) return _bestCompetence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestCompetence);
  }

  final List<WellbeingQuestion> _bestRelatedness;
  @override
  @JsonKey()
  List<WellbeingQuestion> get bestRelatedness {
    if (_bestRelatedness is EqualUnmodifiableListView) return _bestRelatedness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestRelatedness);
  }

  final List<WellbeingQuestion> _worstAutonomy;
  @override
  @JsonKey()
  List<WellbeingQuestion> get worstAutonomy {
    if (_worstAutonomy is EqualUnmodifiableListView) return _worstAutonomy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_worstAutonomy);
  }

  final List<WellbeingQuestion> _worstCompetence;
  @override
  @JsonKey()
  List<WellbeingQuestion> get worstCompetence {
    if (_worstCompetence is EqualUnmodifiableListView) return _worstCompetence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_worstCompetence);
  }

  final List<WellbeingQuestion> _worstRelatedness;
  @override
  @JsonKey()
  List<WellbeingQuestion> get worstRelatedness {
    if (_worstRelatedness is EqualUnmodifiableListView)
      return _worstRelatedness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_worstRelatedness);
  }

  final List<String> _recommendationsAutonomy;
  @override
  @JsonKey()
  List<String> get recommendationsAutonomy {
    if (_recommendationsAutonomy is EqualUnmodifiableListView)
      return _recommendationsAutonomy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendationsAutonomy);
  }

  final List<String> _recommendationsCompetence;
  @override
  @JsonKey()
  List<String> get recommendationsCompetence {
    if (_recommendationsCompetence is EqualUnmodifiableListView)
      return _recommendationsCompetence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendationsCompetence);
  }

  final List<String> _recommendationsRelatedness;
  @override
  @JsonKey()
  List<String> get recommendationsRelatedness {
    if (_recommendationsRelatedness is EqualUnmodifiableListView)
      return _recommendationsRelatedness;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendationsRelatedness);
  }

  final List<WellbeingScoreData> _history;
  @override
  @JsonKey()
  List<WellbeingScoreData> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey()
  final String selectedDimension;

  @override
  String toString() {
    return 'QuestionnaireState(status: $status, selectedIndexes: $selectedIndexes, autonomyScore: $autonomyScore, competenceScore: $competenceScore, relatednessScore: $relatednessScore, overall: $overall, bestAutonomy: $bestAutonomy, bestCompetence: $bestCompetence, bestRelatedness: $bestRelatedness, worstAutonomy: $worstAutonomy, worstCompetence: $worstCompetence, worstRelatedness: $worstRelatedness, recommendationsAutonomy: $recommendationsAutonomy, recommendationsCompetence: $recommendationsCompetence, recommendationsRelatedness: $recommendationsRelatedness, history: $history, selectedDimension: $selectedDimension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._selectedIndexes, _selectedIndexes) &&
            (identical(other.autonomyScore, autonomyScore) ||
                other.autonomyScore == autonomyScore) &&
            (identical(other.competenceScore, competenceScore) ||
                other.competenceScore == competenceScore) &&
            (identical(other.relatednessScore, relatednessScore) ||
                other.relatednessScore == relatednessScore) &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other._bestAutonomy, _bestAutonomy) &&
            const DeepCollectionEquality()
                .equals(other._bestCompetence, _bestCompetence) &&
            const DeepCollectionEquality()
                .equals(other._bestRelatedness, _bestRelatedness) &&
            const DeepCollectionEquality()
                .equals(other._worstAutonomy, _worstAutonomy) &&
            const DeepCollectionEquality()
                .equals(other._worstCompetence, _worstCompetence) &&
            const DeepCollectionEquality()
                .equals(other._worstRelatedness, _worstRelatedness) &&
            const DeepCollectionEquality().equals(
                other._recommendationsAutonomy, _recommendationsAutonomy) &&
            const DeepCollectionEquality().equals(
                other._recommendationsCompetence, _recommendationsCompetence) &&
            const DeepCollectionEquality().equals(
                other._recommendationsRelatedness,
                _recommendationsRelatedness) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.selectedDimension, selectedDimension) ||
                other.selectedDimension == selectedDimension));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_selectedIndexes),
      autonomyScore,
      competenceScore,
      relatednessScore,
      overall,
      const DeepCollectionEquality().hash(_bestAutonomy),
      const DeepCollectionEquality().hash(_bestCompetence),
      const DeepCollectionEquality().hash(_bestRelatedness),
      const DeepCollectionEquality().hash(_worstAutonomy),
      const DeepCollectionEquality().hash(_worstCompetence),
      const DeepCollectionEquality().hash(_worstRelatedness),
      const DeepCollectionEquality().hash(_recommendationsAutonomy),
      const DeepCollectionEquality().hash(_recommendationsCompetence),
      const DeepCollectionEquality().hash(_recommendationsRelatedness),
      const DeepCollectionEquality().hash(_history),
      selectedDimension);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireStateImplCopyWith<_$QuestionnaireStateImpl> get copyWith =>
      __$$QuestionnaireStateImplCopyWithImpl<_$QuestionnaireStateImpl>(
          this, _$identity);
}

abstract class _QuestionnaireState implements QuestionnaireState {
  const factory _QuestionnaireState(
      {final QuestionnaireStatus status,
      final List<int> selectedIndexes,
      final int autonomyScore,
      final int competenceScore,
      final int relatednessScore,
      final int overall,
      final List<WellbeingQuestion> bestAutonomy,
      final List<WellbeingQuestion> bestCompetence,
      final List<WellbeingQuestion> bestRelatedness,
      final List<WellbeingQuestion> worstAutonomy,
      final List<WellbeingQuestion> worstCompetence,
      final List<WellbeingQuestion> worstRelatedness,
      final List<String> recommendationsAutonomy,
      final List<String> recommendationsCompetence,
      final List<String> recommendationsRelatedness,
      final List<WellbeingScoreData> history,
      final String selectedDimension}) = _$QuestionnaireStateImpl;

  @override
  QuestionnaireStatus get status;
  @override
  List<int> get selectedIndexes;
  @override
  int get autonomyScore;
  @override
  int get competenceScore;
  @override
  int get relatednessScore;
  @override
  int get overall;
  @override
  List<WellbeingQuestion> get bestAutonomy;
  @override
  List<WellbeingQuestion> get bestCompetence;
  @override
  List<WellbeingQuestion> get bestRelatedness;
  @override
  List<WellbeingQuestion> get worstAutonomy;
  @override
  List<WellbeingQuestion> get worstCompetence;
  @override
  List<WellbeingQuestion> get worstRelatedness;
  @override
  List<String> get recommendationsAutonomy;
  @override
  List<String> get recommendationsCompetence;
  @override
  List<String> get recommendationsRelatedness;
  @override
  List<WellbeingScoreData> get history;
  @override
  String get selectedDimension;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireStateImplCopyWith<_$QuestionnaireStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
