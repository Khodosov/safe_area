import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';

// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;

import '../di.dart';

part 'map_manager_bloc.freezed.dart';

part 'map_manager_event.dart';

part 'map_manager_state.dart';

class MapManagerBloc extends Bloc<MapManagerEvent, MapManagerState> {
  MapManagerBloc() : super(MapManagerState.initial()) {
    on<MapManagerEvent>(
      (event, emit) {
        event.map(
          changeLocation: (_ChangeLocation location) {
            emit(state.copyWith(currentLocation: location.locationData));
            Locator.mapController.move(
              latLng.LatLng(
                state.currentLocation!.latitude ?? 0,
                state.currentLocation!.longitude ?? 0,
              ),
              Locator.mapController.zoom,
            );
          },
          updatePolygons: (_UpdatePolygons value) {
            emit(state.copyWith(polygons: value.polygons));
          },
          centerCamera: (_CenterCamera value) {
            Locator.mapController.move(
              latLng.LatLng(
                state.currentLocation!.latitude ?? 0,
                state.currentLocation!.longitude ?? 0,
              ),
              Locator.mapController.zoom,
            );
          },
        );
      },
    );
  }
}
