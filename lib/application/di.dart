import 'package:get_it/get_it.dart';

class Locator {
  const Locator._();

  static final GetIt _locator = GetIt.instance;

  static initLocator() {}

// static ConnectivityEnsure get connectivity => _locator<ConnectivityEnsure>();

// static AppApisService get network => _locator<AppApisService>();
}
