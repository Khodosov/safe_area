import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_area/domain/models/preferences/preferences_sp.dart';

part 'preferences.freezed.dart';

@freezed
class Preferences with _$Preferences {
  const factory Preferences({
    required Locale locale,
    required ThemeMode themeMode,
  }) = _Preferences;

  static Preferences fromSP({required PreferencesSP sp}) {
    return Preferences(
      locale: Locale(sp.locale),
      themeMode: sp.themeMode,
    );
  }

  factory Preferences.initial() {
    return const Preferences(
      themeMode: ThemeMode.system,
      locale: Locale('en'),
    );
  }
}
