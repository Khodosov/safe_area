import 'dart:developer';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:safe_area/domain/models/user_location/user_location.dart';
import 'package:safe_area/domain/models/user_location_hive/user_location_hive.dart';

import '../di.dart';

part 'data_saver_bloc.freezed.dart';

part 'data_saver_event.dart';

part 'data_saver_state.dart';

class DataSaverBloc extends Bloc<DataSaverEvent, DataSaverState> {
  DataSaverBloc() : super(DataSaverState.initial()) {
    on<DataSaverEvent>(
      (event, emit) async {
        event.map(
          addToList: (_addToList value) {
            final list = List<UserLocation>.from(state.locationList);
            list.add(value.location);
            emit(state.copyWith(
              locationList: list,
            ));
          },
          addToHiveList: (_addToHiveList value) {
            final list = List<UserLocationHive>.from(state.locationHiveList);
            list.add(value.locationHive);
            emit(state.copyWith(
              locationHiveList: list,
            ));
          },
          saveToDiscHive: (_saveToDiscHive value) {
            final stopwatch = Stopwatch()..start();
            Locator.hiveManager.saveLocations(state.locationHiveList);
            log('[DataSaverBloc] saveToDiscHive executed in ${stopwatch.elapsed}');
          },
          saveToDiscSharedPreferences: (_saveToDiscSharedPreferences value) {
            final stopwatch = Stopwatch()..start();
            Locator.sharedPreferencesManager.saveLocations(state.locationList);
            log('[DataSaverBloc] saveToDiscSharedPreferences executed in ${stopwatch.elapsed}');
          },
          saveToDiscSQFLite: (_saveToDiscSQFLite value) {
            final stopwatch = Stopwatch()..start();
            Locator.sqfliteManager.saveLocations(state.locationList);
            log('[DataSaverBloc] saveToDiscSQFLite executed in ${stopwatch.elapsed}');
          },
          generateData: (_generateData value) {
            final hiveList = generateHive(1000000);
            final list = generate(1000000);
            emit(state.copyWith(
              locationHiveList: hiveList,
            ));
            emit(state.copyWith(
              locationList: list,
            ));
          },
          readFromDiscHive: (_readFromDiscHive value) {
            final stopwatch = Stopwatch()..start();
            Locator.hiveManager.getLocationsLength();
            log('[DataSaverBloc] readFromDiscHive executed in ${stopwatch.elapsed}');
          },
          readFromDiskSharedPreferences: (_readFromDiscSharedPreferences value) {
            final stopwatch = Stopwatch()..start();
            Locator.sharedPreferencesManager.getLocationsLength();
            log('[DataSaverBloc] readFromDiskSharedPreferences executed in ${stopwatch.elapsed}');
          },
          readFromDiscSQFLite: (_readFromDiscSQFLite value) {
            final stopwatch = Stopwatch()..start();
            Locator.sqfliteManager.getLocationsLength();
            log('[DataSaverBloc] readFromDiscSQFLite executed in ${stopwatch.elapsed}');
          },
          updateHive: (_updateHive value) {
            final stopwatch = Stopwatch()..start();
            Locator.hiveManager.updateLocations('1');
            log('[DataSaverBloc] updateHive executed in ${stopwatch.elapsed}');
          },
          updateSharedPreferences: (_updateSharedPreferences value) {
            final stopwatch = Stopwatch()..start();
            Locator.sharedPreferencesManager.updateLocations('1');
            log('[DataSaverBloc] updateSharedPreferences executed in ${stopwatch.elapsed}');
          },
          updateSQFLite: (_updateSQFLite value) {
            final stopwatch = Stopwatch()..start();
            Locator.sqfliteManager.updateLocations('1');
            log('[DataSaverBloc] updateSQFLite executed in ${stopwatch.elapsed}');
          },
        );
      },
    );
  }
}

List<UserLocationHive> generateHive(int count) {
  final result = <UserLocationHive>[];
  const longitude = 0.0;
  const latitude = 0.0;
  final time = 4294967296.toString();
  result.add(
    UserLocationHive(
      longitude: longitude,
      latitude: latitude,
      time: time,
    ),
  );
  for (int i = 1; i < count; i++) {
    final longitude = math.Random().nextDouble() * 90;
    final latitude = math.Random().nextDouble() * 90;
    final time = i.toString();
    result.add(
      UserLocationHive(
        longitude: longitude,
        latitude: latitude,
        time: time,
      ),
    );
  }
  return result;
}

List<UserLocation> generate(int count) {
  final result = <UserLocation>[];
  const longitude = 0.0;
  const latitude = 0.0;
  final time = 4294967296.toString();
  result.add(
    UserLocation(
      longitude: longitude,
      latitude: latitude,
      time: time,
    ),
  );
  for (int i = 1; i < count; i++) {
    final longitude = math.Random().nextDouble() * 90;
    final latitude = math.Random().nextDouble() * 90;
    final time = i.toString();
    result.add(
      UserLocation(
        longitude: longitude,
        latitude: latitude,
        time: time,
      ),
    );
  }
  return result;
}
