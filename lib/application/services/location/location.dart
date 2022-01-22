import 'package:location/location.dart';

class LocationFetcher {
  final Location _location = Location();

  // Stream<LocationData> get locationStream async* {
  //   _location.onLocationChanged.listen((LocationData currentLocation) async* {
  //     yield currentLocation;
  //   });

  // }

  Future<LocationData?> get currentLocation async {
    bool _serviceEnabled = await _location.serviceEnabled();
    _serviceEnabled = await _location.requestService();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
      if (!_serviceEnabled) {
        // return;
      }
    }
    PermissionStatus _permissionStatus = await _location.hasPermission();
    if (_permissionStatus == PermissionStatus.denied) {
      _permissionStatus = await _location.requestPermission();
      if (_permissionStatus != PermissionStatus.granted) {
        // return;
      }
    }
    if (_serviceEnabled && _permissionStatus == PermissionStatus.granted) {
      final location = _location.getLocation();
      return location;
    }
  }
}
