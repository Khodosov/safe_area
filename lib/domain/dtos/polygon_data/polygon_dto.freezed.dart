// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'polygon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PolygonDto _$PolygonDtoFromJson(Map<String, dynamic> json) {
  return _PolygonDto.fromJson(json);
}

/// @nodoc
class _$PolygonDtoTearOff {
  const _$PolygonDtoTearOff();

  _PolygonDto call({required List<List<List<double>>> coordinates}) {
    return _PolygonDto(
      coordinates: coordinates,
    );
  }

  PolygonDto fromJson(Map<String, Object?> json) {
    return PolygonDto.fromJson(json);
  }
}

/// @nodoc
const $PolygonDto = _$PolygonDtoTearOff();

/// @nodoc
mixin _$PolygonDto {
  List<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolygonDtoCopyWith<PolygonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolygonDtoCopyWith<$Res> {
  factory $PolygonDtoCopyWith(
          PolygonDto value, $Res Function(PolygonDto) then) =
      _$PolygonDtoCopyWithImpl<$Res>;
  $Res call({List<List<List<double>>> coordinates});
}

/// @nodoc
class _$PolygonDtoCopyWithImpl<$Res> implements $PolygonDtoCopyWith<$Res> {
  _$PolygonDtoCopyWithImpl(this._value, this._then);

  final PolygonDto _value;
  // ignore: unused_field
  final $Res Function(PolygonDto) _then;

  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
abstract class _$PolygonDtoCopyWith<$Res> implements $PolygonDtoCopyWith<$Res> {
  factory _$PolygonDtoCopyWith(
          _PolygonDto value, $Res Function(_PolygonDto) then) =
      __$PolygonDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<List<List<double>>> coordinates});
}

/// @nodoc
class __$PolygonDtoCopyWithImpl<$Res> extends _$PolygonDtoCopyWithImpl<$Res>
    implements _$PolygonDtoCopyWith<$Res> {
  __$PolygonDtoCopyWithImpl(
      _PolygonDto _value, $Res Function(_PolygonDto) _then)
      : super(_value, (v) => _then(v as _PolygonDto));

  @override
  _PolygonDto get _value => super._value as _PolygonDto;

  @override
  $Res call({
    Object? coordinates = freezed,
  }) {
    return _then(_PolygonDto(
      coordinates: coordinates == freezed
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PolygonDto implements _PolygonDto {
  const _$_PolygonDto({required this.coordinates});

  factory _$_PolygonDto.fromJson(Map<String, dynamic> json) =>
      _$$_PolygonDtoFromJson(json);

  @override
  final List<List<List<double>>> coordinates;

  @override
  String toString() {
    return 'PolygonDto(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolygonDto &&
            const DeepCollectionEquality()
                .equals(other.coordinates, coordinates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(coordinates));

  @JsonKey(ignore: true)
  @override
  _$PolygonDtoCopyWith<_PolygonDto> get copyWith =>
      __$PolygonDtoCopyWithImpl<_PolygonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PolygonDtoToJson(this);
  }
}

abstract class _PolygonDto implements PolygonDto {
  const factory _PolygonDto({required List<List<List<double>>> coordinates}) =
      _$_PolygonDto;

  factory _PolygonDto.fromJson(Map<String, dynamic> json) =
      _$_PolygonDto.fromJson;

  @override
  List<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$PolygonDtoCopyWith<_PolygonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
