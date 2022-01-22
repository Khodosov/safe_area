import 'package:get_it/get_it.dart';
import 'package:safe_area/application/services/connectivity/connectivity_ensure.dart';
import 'package:safe_area/application/services/location/location.dart';
import 'package:safe_area/application/services/network_requests/network_requests.dart';
import 'package:safe_area/application/services/preferences/prefs_saver.dart';

class Locator {
  const Locator._();

  static final GetIt _locator = GetIt.instance;

  static initLocator() {
    _locator.registerLazySingleton<ConnectivityEnsure>(() => ConnectivityEnsure());
    _locator.registerLazySingleton<LocationFetcher>(() => LocationFetcher());
    _locator.registerLazySingleton<PreferencesSaver>(() => PreferencesSaver());
    _locator.registerLazySingleton<NetworkRequests>(() => NetworkRequests());
  }

  static ConnectivityEnsure get connectivity => _locator<ConnectivityEnsure>();

  static LocationFetcher get location => _locator<LocationFetcher>();

  static PreferencesSaver get preferences => _locator<PreferencesSaver>();

  static NetworkRequests get network => _locator<NetworkRequests>();
  
}
