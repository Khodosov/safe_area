import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:safe_area/domain/models/user_location_hive/user_location_hive.dart';

class HiveManager {
  Future<void> hiveInit() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserLocationHiveAdapter());
    log('[HiveSaver] initialization completed');
  }

  Future<void> saveLocations(List<UserLocationHive> locations) async {
    final locationsBox = await Hive.openBox<UserLocationHive>('locations');
    final map = <String, UserLocationHive>{
      for (final location in locations) location.time: location,
    };
    locationsBox.putAll(map);
  }

  Future<int> getLocationsLength() async {
    try {
      final locationsBox = await Hive.openBox<UserLocationHive>('locations');
      List<UserLocationHive> list = locationsBox.values.toList();
      log('[getLocationsLength] (hive) there are ${list.length} points');
      return list.length;
    } catch (error) {
      return 0;
    }
  }

  @Deprecated('')
  Future<List<UserLocationHive>> getLocations() async {
    try {
      final locationsBox = await Hive.openBox<UserLocationHive>('locations');
      List<UserLocationHive> list = locationsBox.values.toList();
      return list;
    } catch (error) {
      return <UserLocationHive>[];
    }
  }

  Future<void> updateLocations(String time) async {
    final locations = await Hive.openBox<UserLocationHive>('locations');
    locations.delete(time);
    locations.put(time, UserLocationHive(time: '123', latitude: 0.0, longitude: 0.0));
  }

  Future<void> removeAllFromLocations() async {
    final locations = await Hive.openBox<UserLocationHive>('locations');
    locations.deleteAll(locations.keys);
  }
}
