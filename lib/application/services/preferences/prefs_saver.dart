import 'dart:convert';

import 'package:safe_area/domain/models/preferences/preferences.dart';
import 'package:safe_area/domain/models/preferences/preferences_sp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesSaver {
  Future<void> save({required PreferencesSP preferences}) async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setString('preferences', preferences.toJson().toString());
  }

  Future<Preferences> loadPrefs() async {
    final _sharedPreferences = await SharedPreferences.getInstance();
    final prefs = jsonDecode(_sharedPreferences.getString('preferences') ?? '') as Map<String, dynamic>;
    if (prefs.isNotEmpty) {
      return Preferences.fromSP(sp: PreferencesSP.fromJson(prefs));
    } else {
      return Preferences.initial();
    }
  }
}
