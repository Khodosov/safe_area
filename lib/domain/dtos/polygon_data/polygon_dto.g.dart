// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PolygonDto _$$_PolygonDtoFromJson(Map<String, dynamic> json) =>
    _$_PolygonDto(
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_PolygonDtoToJson(_$_PolygonDto instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
    };
