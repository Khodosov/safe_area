import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';
import 'package:safe_area/application/map_manage/map_manager_bloc.dart';

import '../../di.dart';

class LocationFetcher {
  final Location _location = Location();
  StreamSubscription? _locationSubscription;

  void stopListen() {
    _locationSubscription?.cancel();
  }

  Stream<LocationData> locationStream(BuildContext context) async* {
    bool _serviceEnabled = await _location.serviceEnabled();
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
      _locationSubscription = _location.onLocationChanged.listen((LocationData currentLocation) {
        log('[locationStream] location fetched : ${currentLocation.toString()}');

        // Locator.network.updatePolygons(context: context, location: currentLocation);

        BlocProvider.of<MapManagerBloc>(context)
            .add(MapManagerEvent.changeLocation(locationData: currentLocation));
        log('[locationStream] location state updated');
      });
    }
  }

  Future<LocationData?> get currentLocation async {
    bool _serviceEnabled = await _location.serviceEnabled();
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
