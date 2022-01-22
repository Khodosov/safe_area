import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_sp.g.dart';

@JsonSerializable()
class PreferencesSP {
  final String locale;
  final ThemeMode themeMode;
  PreferencesSP({
    required this.locale,
    required this.themeMode,
  });

  factory PreferencesSP.fromJson(Map<String, dynamic> json) => _$PreferencesSPFromJson(json);

  Map<String, dynamic> toJson() => _$PreferencesSPToJson(this);
}
