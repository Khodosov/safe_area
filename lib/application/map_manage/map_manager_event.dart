part of 'map_manager_bloc.dart';

@freezed
class MapManagerEvent with _$MapManagerEvent {
  const factory MapManagerEvent.changeLocation({required LocationData locationData}) = _ChangeLocation;

  const factory MapManagerEvent.updatePolygons({required List<Polygon> polygons}) = _UpdatePolygons;
}
