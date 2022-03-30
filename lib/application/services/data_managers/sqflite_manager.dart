import 'dart:convert';
import 'dart:developer';

import 'package:safe_area/domain/models/user_location/user_location.dart';
import 'package:sqflite/sqflite.dart';

class SQFLiteManager {
  late Database _database;

  Future<void> sqfliteInit() async {
    var databasesPath = await getDatabasesPath();
    String path = '${databasesPath}locations.db';

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('CREATE TABLE Locations (time TEXT PRIMARY KEY, longitude REAL, latitude REAL)');
      },
    );
    log('[SQFLiteManager] initialization completed');
  }

  Future<void> saveLocations(List<UserLocation> locations) async {
    await _database.execute('DROP TABLE Locations');
    await _database.execute('CREATE TABLE Locations (time TEXT PRIMARY KEY, longitude REAL, latitude REAL)');
    final batch = _database.batch();
    for (final location in locations) {
      batch.insert(
        'Locations',
        {
          'time': location.time,
          'longitude': location.longitude,
          'latitude': location.latitude,
        },
      );
    }
    await batch.commit(noResult: true);
  }

  @Deprecated('')
  Future<List<UserLocation>> getLocations() async {
    try {
      final locations = await _database.rawQuery('SELECT * FROM "Locations"');
      return <UserLocation>[];
    } catch (error) {
      return <UserLocation>[];
    }
  }

  Future<int> getLocationsLength() async {
    try {
      final locations = await _database.rawQuery('SELECT * FROM "Locations"');
      log('[getLocationsLength] (sqflite) there are ${locations.length} points');
      return locations.length;
    } catch (error) {
      return 0;
    }
  }

  Future<void> updateLocations(String time) async {
    _database.rawUpdate('''
    UPDATE Locations 
    SET longitude = ?, latitude = ? 
    WHERE time = ?
    ''', [0.0, 0.0, '1']);
  }
}
