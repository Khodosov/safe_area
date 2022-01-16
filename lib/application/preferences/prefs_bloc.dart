import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'prefs_event.dart';

part 'prefs_state.dart';

part 'prefs_bloc.freezed.dart';

class PrefsBloc extends Bloc<PrefsEvent, PrefsState> {
  PrefsBloc() : super(PrefsState.initial()) {
    on<PrefsEvent>(
      (event, emit) {
        event.map(
          changeTheme: (_ChangeTheme value) {
            emit(state.copyWith(themeMode: value.themeMode));
          },
          changeLocale: (_ChangeLocale value) {
            emit(state.copyWith(locale: value.locale));
          },
        );
      },
    );
  }
}
