part of 'prefs_bloc.dart';

@freezed
class PrefsState with _$PrefsState {
  const factory PrefsState({
    required Locale locale,
    required ThemeMode themeMode,
  }) = _PrefsState;

  factory PrefsState.initial() {
    return const PrefsState(
      themeMode: ThemeMode.system,
      locale: Locale('en'),
    );
  }
}
