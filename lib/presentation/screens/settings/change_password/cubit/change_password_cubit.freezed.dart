// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordState {
  ChangePasswordStatus get status => throw _privateConstructorUsedError;
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get repeatNewPassword => throw _privateConstructorUsedError;
  String get currentPasswordError => throw _privateConstructorUsedError;
  String get newPasswordError => throw _privateConstructorUsedError;
  String get repeatNewPasswordError => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {ChangePasswordStatus status,
      String currentPassword,
      String newPassword,
      String repeatNewPassword,
      String currentPasswordError,
      String newPasswordError,
      String repeatNewPasswordError});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? repeatNewPassword = null,
    Object? currentPasswordError = null,
    Object? newPasswordError = null,
    Object? repeatNewPasswordError = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      repeatNewPassword: null == repeatNewPassword
          ? _value.repeatNewPassword
          : repeatNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPasswordError: null == currentPasswordError
          ? _value.currentPasswordError
          : currentPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordError: null == newPasswordError
          ? _value.newPasswordError
          : newPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
      repeatNewPasswordError: null == repeatNewPasswordError
          ? _value.repeatNewPasswordError
          : repeatNewPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordStateImplCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$ChangePasswordStateImplCopyWith(_$ChangePasswordStateImpl value,
          $Res Function(_$ChangePasswordStateImpl) then) =
      __$$ChangePasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChangePasswordStatus status,
      String currentPassword,
      String newPassword,
      String repeatNewPassword,
      String currentPasswordError,
      String newPasswordError,
      String repeatNewPasswordError});
}

/// @nodoc
class __$$ChangePasswordStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$ChangePasswordStateImpl>
    implements _$$ChangePasswordStateImplCopyWith<$Res> {
  __$$ChangePasswordStateImplCopyWithImpl(_$ChangePasswordStateImpl _value,
      $Res Function(_$ChangePasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? repeatNewPassword = null,
    Object? currentPasswordError = null,
    Object? newPasswordError = null,
    Object? repeatNewPasswordError = null,
  }) {
    return _then(_$ChangePasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChangePasswordStatus,
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      repeatNewPassword: null == repeatNewPassword
          ? _value.repeatNewPassword
          : repeatNewPassword // ignore: cast_nullable_to_non_nullable
              as String,
      currentPasswordError: null == currentPasswordError
          ? _value.currentPasswordError
          : currentPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
      newPasswordError: null == newPasswordError
          ? _value.newPasswordError
          : newPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
      repeatNewPasswordError: null == repeatNewPasswordError
          ? _value.repeatNewPasswordError
          : repeatNewPasswordError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordStateImpl implements _ChangePasswordState {
  const _$ChangePasswordStateImpl(
      {this.status = ChangePasswordStatus.init,
      this.currentPassword = '',
      this.newPassword = '',
      this.repeatNewPassword = '',
      this.currentPasswordError = '',
      this.newPasswordError = '',
      this.repeatNewPasswordError = ''});

  @override
  @JsonKey()
  final ChangePasswordStatus status;
  @override
  @JsonKey()
  final String currentPassword;
  @override
  @JsonKey()
  final String newPassword;
  @override
  @JsonKey()
  final String repeatNewPassword;
  @override
  @JsonKey()
  final String currentPasswordError;
  @override
  @JsonKey()
  final String newPasswordError;
  @override
  @JsonKey()
  final String repeatNewPasswordError;

  @override
  String toString() {
    return 'ChangePasswordState(status: $status, currentPassword: $currentPassword, newPassword: $newPassword, repeatNewPassword: $repeatNewPassword, currentPasswordError: $currentPasswordError, newPasswordError: $newPasswordError, repeatNewPasswordError: $repeatNewPasswordError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.repeatNewPassword, repeatNewPassword) ||
                other.repeatNewPassword == repeatNewPassword) &&
            (identical(other.currentPasswordError, currentPasswordError) ||
                other.currentPasswordError == currentPasswordError) &&
            (identical(other.newPasswordError, newPasswordError) ||
                other.newPasswordError == newPasswordError) &&
            (identical(other.repeatNewPasswordError, repeatNewPasswordError) ||
                other.repeatNewPasswordError == repeatNewPasswordError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      currentPassword,
      newPassword,
      repeatNewPassword,
      currentPasswordError,
      newPasswordError,
      repeatNewPasswordError);

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      __$$ChangePasswordStateImplCopyWithImpl<_$ChangePasswordStateImpl>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {final ChangePasswordStatus status,
      final String currentPassword,
      final String newPassword,
      final String repeatNewPassword,
      final String currentPasswordError,
      final String newPasswordError,
      final String repeatNewPasswordError}) = _$ChangePasswordStateImpl;

  @override
  ChangePasswordStatus get status;
  @override
  String get currentPassword;
  @override
  String get newPassword;
  @override
  String get repeatNewPassword;
  @override
  String get currentPasswordError;
  @override
  String get newPasswordError;
  @override
  String get repeatNewPasswordError;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordStateImplCopyWith<_$ChangePasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
