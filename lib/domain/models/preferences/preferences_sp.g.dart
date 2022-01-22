// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_sp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesSP _$PreferencesSPFromJson(Map<String, dynamic> json) =>
    PreferencesSP(
      locale: json['locale'] as String,
      themeMode: $enumDecode(_$ThemeModeEnumMap, json['themeMode']),
    );

Map<String, dynamic> _$PreferencesSPToJson(PreferencesSP instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
