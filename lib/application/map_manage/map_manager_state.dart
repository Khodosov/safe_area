part of 'map_manager_bloc.dart';

@freezed
class MapManagerState with _$MapManagerState {
  const factory MapManagerState({
    LocationData? currentLocation,
    required List<Polygon> polygons,
  }) = _NavigationState;

  factory MapManagerState.initial() {
    return const MapManagerState(
      polygons: [],
    );
  }
}
