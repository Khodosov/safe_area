import 'dart:convert';
import 'dart:developer';

import 'package:safe_area/domain/models/user_location/user_location.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  late SharedPreferences _sharedPreferences;

  Future<void> sharedPreferencesInit() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    log('[SharedPreferencesSaver] initialization completed');
  }

  Future<void> saveLocations(List<UserLocation> locations) async {
    _sharedPreferences.setStringList('locations', locations.map((e) => e.toJson().toString()).toList());
  }

  Future<int> getLocationsLength() async {
    final locations = _sharedPreferences.getStringList('locations');
    log('[getLocationsLength] (sp) there are ${locations!.length} points');
    try {
      final locations = _sharedPreferences.getStringList('locations');
      List<UserLocation> list = locations!.map((e) => UserLocation.fromJson(jsonDecode(e))).toList();
      log('[getLocationsLength] (sp) there are ${locations.length} points');
      return list.length;
    } catch (error) {
      return 0;
    }
  }

  @Deprecated('')
  Future<List<UserLocation>> getLocations() async {
    try {
      final locations = _sharedPreferences.getStringList('locations');
      List<UserLocation> list = locations!.map((e) => UserLocation.fromJson(jsonDecode(e))).toList();
      return list;
    } catch (error) {
      return <UserLocation>[];
    }
  }

  Future<void> updateLocations(String time) async {
    // final locations = _sharedPreferences.getStringList('locations');
    // List<UserLocation> list = locations?.map((e) => UserLocation.fromJson(jsonDecode(e))).toList() ?? [];
    // list.removeWhere((element) => element.time == time);
    _sharedPreferences.setString(
      time,
      const UserLocation(time: '123', latitude: 0.0, longitude: 0.0).toJson().toString(),
    );

  }
}
