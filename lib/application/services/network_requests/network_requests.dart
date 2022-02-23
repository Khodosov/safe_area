import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:safe_area/application/map_manage/map_manager_bloc.dart';
import 'package:safe_area/domain/dtos/polygon_data/polygon_dto.dart';

class NetworkRequests {
  final _dio = Dio();

  final _link = 'ip172-18-0-10-c8b489k1r0f000fdndp0.direct.labs.play-with-k8s.com';

  Future<void> updatePolygons({
    required BuildContext context,
    required LocationData location,
  }) async {
    final url = 'http://$_link/api/v1/test';
    Map<String, String> queryParameters = {'Content-Type': 'application/json;charset=UTF-8', 'Charset': 'utf-8'};
    log('[updatePolygons] Request ');
    final request = await _dio.post(url,
        data: {"latitude": location.latitude, "longitude": location.longitude, "time": location.time?.toInt()},
        queryParameters: queryParameters);

    log('[updatePolygons] Request status code ${request.statusCode}');

    final list = <Polygon>[];
    for (var feature in request.data['features']) {
      final parsedPolygon = PolygonDto.fromJson(feature['geometry']).dtoToPolygon();
      list.add(parsedPolygon);
    }
    log('There are ${list.length} hexagons around');
    BlocProvider.of<MapManagerBloc>(context).add(MapManagerEvent.updatePolygons(polygons: list));
  }
}
