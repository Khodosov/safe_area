part of 'prefs_bloc.dart';

@freezed
class PrefsEvent with _$PrefsEvent {

  const factory PrefsEvent.changeTheme({required ThemeMode themeMode}) = _ChangeTheme;

}
