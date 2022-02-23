import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'dart:math' as math;

part 'polygon_dto.freezed.dart';

part 'polygon_dto.g.dart';

@freezed
class PolygonDto with _$PolygonDto {
  const factory PolygonDto({
    required List<List<List<double>>> coordinates,
    // required int healthy,
    // required int suspicious,
    // required int infected,
  }) = _PolygonDto;

  factory PolygonDto.fromJson(Map<String, dynamic> json) => _$PolygonDtoFromJson(json);
}

extension PolygonDtoX on PolygonDto {
  Polygon dtoToPolygon() {
    final List<LatLng> points = [];
    for (final coordinate in coordinates.first) {
      points.add(LatLng(
        coordinate[1],
        coordinate[0],
      ));
    }
    return Polygon(
      points: points,
      color: getPolygonColor(
        healthy: 0,
        suspicious: 0,
        infected: 0,
      ),
      borderColor: Colors.black,
    );
  }

  Color getPolygonColor({
    required int healthy,
    required int suspicious,
    required int infected,
  }) {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
        .withOpacity(0.3);
  }
}
