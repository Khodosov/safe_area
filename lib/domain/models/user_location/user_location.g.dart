// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLocation _$$_UserLocationFromJson(Map<String, dynamic> json) =>
    _$_UserLocation(
      time: json['time'] as int,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserLocationToJson(_$_UserLocation instance) =>
    <String, dynamic>{
      'time': instance.time,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
