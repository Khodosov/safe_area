// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapManagerEventTearOff {
  const _$MapManagerEventTearOff();

  _ChangeLocation changeLocation({required LocationData locationData}) {
    return _ChangeLocation(
      locationData: locationData,
    );
  }

  _UpdatePolygons updatePolygons({required List<Polygon> polygons}) {
    return _UpdatePolygons(
      polygons: polygons,
    );
  }
}

/// @nodoc
const $MapManagerEvent = _$MapManagerEventTearOff();

/// @nodoc
mixin _$MapManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData locationData) changeLocation,
    required TResult Function(List<Polygon> polygons) updatePolygons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_UpdatePolygons value) updatePolygons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapManagerEventCopyWith<$Res> {
  factory $MapManagerEventCopyWith(
          MapManagerEvent value, $Res Function(MapManagerEvent) then) =
      _$MapManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapManagerEventCopyWithImpl<$Res>
    implements $MapManagerEventCopyWith<$Res> {
  _$MapManagerEventCopyWithImpl(this._value, this._then);

  final MapManagerEvent _value;
  // ignore: unused_field
  final $Res Function(MapManagerEvent) _then;
}

/// @nodoc
abstract class _$ChangeLocationCopyWith<$Res> {
  factory _$ChangeLocationCopyWith(
          _ChangeLocation value, $Res Function(_ChangeLocation) then) =
      __$ChangeLocationCopyWithImpl<$Res>;
  $Res call({LocationData locationData});
}

/// @nodoc
class __$ChangeLocationCopyWithImpl<$Res>
    extends _$MapManagerEventCopyWithImpl<$Res>
    implements _$ChangeLocationCopyWith<$Res> {
  __$ChangeLocationCopyWithImpl(
      _ChangeLocation _value, $Res Function(_ChangeLocation) _then)
      : super(_value, (v) => _then(v as _ChangeLocation));

  @override
  _ChangeLocation get _value => super._value as _ChangeLocation;

  @override
  $Res call({
    Object? locationData = freezed,
  }) {
    return _then(_ChangeLocation(
      locationData: locationData == freezed
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$_ChangeLocation implements _ChangeLocation {
  const _$_ChangeLocation({required this.locationData});

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'MapManagerEvent.changeLocation(locationData: $locationData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeLocation &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationData);

  @JsonKey(ignore: true)
  @override
  _$ChangeLocationCopyWith<_ChangeLocation> get copyWith =>
      __$ChangeLocationCopyWithImpl<_ChangeLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData locationData) changeLocation,
    required TResult Function(List<Polygon> polygons) updatePolygons,
  }) {
    return changeLocation(locationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
  }) {
    return changeLocation?.call(locationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_UpdatePolygons value) updatePolygons,
  }) {
    return changeLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
  }) {
    return changeLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
    required TResult orElse(),
  }) {
    if (changeLocation != null) {
      return changeLocation(this);
    }
    return orElse();
  }
}

abstract class _ChangeLocation implements MapManagerEvent {
  const factory _ChangeLocation({required LocationData locationData}) =
      _$_ChangeLocation;

  LocationData get locationData;
  @JsonKey(ignore: true)
  _$ChangeLocationCopyWith<_ChangeLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatePolygonsCopyWith<$Res> {
  factory _$UpdatePolygonsCopyWith(
          _UpdatePolygons value, $Res Function(_UpdatePolygons) then) =
      __$UpdatePolygonsCopyWithImpl<$Res>;
  $Res call({List<Polygon> polygons});
}

/// @nodoc
class __$UpdatePolygonsCopyWithImpl<$Res>
    extends _$MapManagerEventCopyWithImpl<$Res>
    implements _$UpdatePolygonsCopyWith<$Res> {
  __$UpdatePolygonsCopyWithImpl(
      _UpdatePolygons _value, $Res Function(_UpdatePolygons) _then)
      : super(_value, (v) => _then(v as _UpdatePolygons));

  @override
  _UpdatePolygons get _value => super._value as _UpdatePolygons;

  @override
  $Res call({
    Object? polygons = freezed,
  }) {
    return _then(_UpdatePolygons(
      polygons: polygons == freezed
          ? _value.polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc

class _$_UpdatePolygons implements _UpdatePolygons {
  const _$_UpdatePolygons({required this.polygons});

  @override
  final List<Polygon> polygons;

  @override
  String toString() {
    return 'MapManagerEvent.updatePolygons(polygons: $polygons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePolygons &&
            const DeepCollectionEquality().equals(other.polygons, polygons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(polygons));

  @JsonKey(ignore: true)
  @override
  _$UpdatePolygonsCopyWith<_UpdatePolygons> get copyWith =>
      __$UpdatePolygonsCopyWithImpl<_UpdatePolygons>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationData locationData) changeLocation,
    required TResult Function(List<Polygon> polygons) updatePolygons,
  }) {
    return updatePolygons(polygons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
  }) {
    return updatePolygons?.call(polygons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationData locationData)? changeLocation,
    TResult Function(List<Polygon> polygons)? updatePolygons,
    required TResult orElse(),
  }) {
    if (updatePolygons != null) {
      return updatePolygons(polygons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLocation value) changeLocation,
    required TResult Function(_UpdatePolygons value) updatePolygons,
  }) {
    return updatePolygons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
  }) {
    return updatePolygons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLocation value)? changeLocation,
    TResult Function(_UpdatePolygons value)? updatePolygons,
    required TResult orElse(),
  }) {
    if (updatePolygons != null) {
      return updatePolygons(this);
    }
    return orElse();
  }
}

abstract class _UpdatePolygons implements MapManagerEvent {
  const factory _UpdatePolygons({required List<Polygon> polygons}) =
      _$_UpdatePolygons;

  List<Polygon> get polygons;
  @JsonKey(ignore: true)
  _$UpdatePolygonsCopyWith<_UpdatePolygons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MapManagerStateTearOff {
  const _$MapManagerStateTearOff();

  _NavigationState call(
      {LocationData? currentLocation, required List<Polygon> polygons}) {
    return _NavigationState(
      currentLocation: currentLocation,
      polygons: polygons,
    );
  }
}

/// @nodoc
const $MapManagerState = _$MapManagerStateTearOff();

/// @nodoc
mixin _$MapManagerState {
  LocationData? get currentLocation => throw _privateConstructorUsedError;
  List<Polygon> get polygons => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapManagerStateCopyWith<MapManagerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapManagerStateCopyWith<$Res> {
  factory $MapManagerStateCopyWith(
          MapManagerState value, $Res Function(MapManagerState) then) =
      _$MapManagerStateCopyWithImpl<$Res>;
  $Res call({LocationData? currentLocation, List<Polygon> polygons});
}

/// @nodoc
class _$MapManagerStateCopyWithImpl<$Res>
    implements $MapManagerStateCopyWith<$Res> {
  _$MapManagerStateCopyWithImpl(this._value, this._then);

  final MapManagerState _value;
  // ignore: unused_field
  final $Res Function(MapManagerState) _then;

  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? polygons = freezed,
  }) {
    return _then(_value.copyWith(
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      polygons: polygons == freezed
          ? _value.polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $MapManagerStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({LocationData? currentLocation, List<Polygon> polygons});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$MapManagerStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object? currentLocation = freezed,
    Object? polygons = freezed,
  }) {
    return _then(_NavigationState(
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      polygons: polygons == freezed
          ? _value.polygons
          : polygons // ignore: cast_nullable_to_non_nullable
              as List<Polygon>,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({this.currentLocation, required this.polygons});

  @override
  final LocationData? currentLocation;
  @override
  final List<Polygon> polygons;

  @override
  String toString() {
    return 'MapManagerState(currentLocation: $currentLocation, polygons: $polygons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavigationState &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            const DeepCollectionEquality().equals(other.polygons, polygons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentLocation,
      const DeepCollectionEquality().hash(polygons));

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements MapManagerState {
  const factory _NavigationState(
      {LocationData? currentLocation,
      required List<Polygon> polygons}) = _$_NavigationState;

  @override
  LocationData? get currentLocation;
  @override
  List<Polygon> get polygons;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
