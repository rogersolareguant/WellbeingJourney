import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeing_journey/domain/repository/user_repository.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  final UserRepository _repository;

  SettingsCubit({required UserRepository repository})
      : _repository = repository,
        super(const SettingsState());

  void updateAppTheme(bool darkMode) {
    emit(state.copyWith(
      darkMode: darkMode,
    ));
  }

  void updateLanguage(Locale language) {
    emit(state.copyWith(
      language: language,
    ));
  }

  Future<void> getEmail() async {
    try {
      String? email = await _repository.getEmail();

      if (email != null) {
        emit(state.copyWith(
          status: SettingsStatus.loaded,
          email: email,
        ));
      } else {
        emit(state.copyWith(
          status: SettingsStatus.error,
          email: state.email,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        status: SettingsStatus.error,
        email: state.email,
      ));
    }
  }

  void signOut() async {
    await _repository.signOut();
    emit(state.copyWith(status: SettingsStatus.loading));
  }
}
