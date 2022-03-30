import 'package:flutter_map/flutter_map.dart';
import 'package:get_it/get_it.dart';
import 'services/connectivity/connectivity_ensure.dart';
import 'services/data_managers/hive_manager.dart';
import 'services/data_managers/sp_manager.dart';
import 'services/data_managers/sqflite_manager.dart';
import 'services/location/location.dart';
import 'services/location/location_save_data.dart';
import 'services/network_requests/network_requests.dart';
import 'services/preferences/prefs_saver.dart';

class Locator {
  const Locator._();

  static final GetIt _locator = GetIt.instance;

  static initLocator() {
    _locator.registerLazySingleton<ConnectivityEnsure>(() => ConnectivityEnsure());
    _locator.registerLazySingleton<LocationFetcher>(() => LocationFetcher());
    _locator.registerLazySingleton<PreferencesSaver>(() => PreferencesSaver());
    _locator.registerLazySingleton<NetworkRequests>(() => NetworkRequests());
    _locator.registerLazySingleton<MapController>(() => MapController());
    _locator.registerLazySingleton<LocationFetcherDataSaver>(() => LocationFetcherDataSaver());
    _locator.registerLazySingleton<HiveManager>(() => HiveManager());
    _locator.registerLazySingleton<SharedPreferencesManager>(() => SharedPreferencesManager());
    _locator.registerLazySingleton<SQFLiteManager>(() => SQFLiteManager());
  }

  static SQFLiteManager get sqfliteManager => _locator<SQFLiteManager>();

  static SharedPreferencesManager get sharedPreferencesManager => _locator<SharedPreferencesManager>();

  static HiveManager get hiveManager => _locator<HiveManager>();

  static MapController get mapController => _locator<MapController>();

  static ConnectivityEnsure get connectivity => _locator<ConnectivityEnsure>();

  static LocationFetcher get location => _locator<LocationFetcher>();

  static LocationFetcherDataSaver get locationDataSaver => _locator<LocationFetcherDataSaver>();

  static PreferencesSaver get preferences => _locator<PreferencesSaver>();

  static NetworkRequests get network => _locator<NetworkRequests>();
}
