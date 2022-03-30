// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLocation _$UserLocationFromJson(Map<String, dynamic> json) {
  return _UserLocation.fromJson(json);
}

/// @nodoc
class _$UserLocationTearOff {
  const _$UserLocationTearOff();

  _UserLocation call(
      {required String time,
      required double latitude,
      required double longitude}) {
    return _UserLocation(
      time: time,
      latitude: latitude,
      longitude: longitude,
    );
  }

  UserLocation fromJson(Map<String, Object?> json) {
    return UserLocation.fromJson(json);
  }
}

/// @nodoc
const $UserLocation = _$UserLocationTearOff();

/// @nodoc
mixin _$UserLocation {
  String get time => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationCopyWith<UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationCopyWith<$Res> {
  factory $UserLocationCopyWith(
          UserLocation value, $Res Function(UserLocation) then) =
      _$UserLocationCopyWithImpl<$Res>;
  $Res call({String time, double latitude, double longitude});
}

/// @nodoc
class _$UserLocationCopyWithImpl<$Res> implements $UserLocationCopyWith<$Res> {
  _$UserLocationCopyWithImpl(this._value, this._then);

  final UserLocation _value;
  // ignore: unused_field
  final $Res Function(UserLocation) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$UserLocationCopyWith<$Res>
    implements $UserLocationCopyWith<$Res> {
  factory _$UserLocationCopyWith(
          _UserLocation value, $Res Function(_UserLocation) then) =
      __$UserLocationCopyWithImpl<$Res>;
  @override
  $Res call({String time, double latitude, double longitude});
}

/// @nodoc
class __$UserLocationCopyWithImpl<$Res> extends _$UserLocationCopyWithImpl<$Res>
    implements _$UserLocationCopyWith<$Res> {
  __$UserLocationCopyWithImpl(
      _UserLocation _value, $Res Function(_UserLocation) _then)
      : super(_value, (v) => _then(v as _UserLocation));

  @override
  _UserLocation get _value => super._value as _UserLocation;

  @override
  $Res call({
    Object? time = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_UserLocation(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLocation implements _UserLocation {
  const _$_UserLocation(
      {required this.time, required this.latitude, required this.longitude});

  factory _$_UserLocation.fromJson(Map<String, dynamic> json) =>
      _$$_UserLocationFromJson(json);

  @override
  final String time;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'UserLocation(time: $time, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLocation &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  _$UserLocationCopyWith<_UserLocation> get copyWith =>
      __$UserLocationCopyWithImpl<_UserLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLocationToJson(this);
  }
}

abstract class _UserLocation implements UserLocation {
  const factory _UserLocation(
      {required String time,
      required double latitude,
      required double longitude}) = _$_UserLocation;

  factory _UserLocation.fromJson(Map<String, dynamic> json) =
      _$_UserLocation.fromJson;

  @override
  String get time;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$UserLocationCopyWith<_UserLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
