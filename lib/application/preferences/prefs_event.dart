part of 'prefs_bloc.dart';

@freezed
class PrefsEvent with _$PrefsEvent {
  const factory PrefsEvent.configPrefs() = _ConfigPrefs;

  const factory PrefsEvent.changeTheme({required ThemeMode themeMode}) = _ChangeTheme;

  const factory PrefsEvent.changeLocale({required Locale locale}) = _ChangeLocale;
}
