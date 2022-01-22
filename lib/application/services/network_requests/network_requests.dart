import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:safe_area/application/di.dart';

class NetworkRequests {
  final _dio = Dio();

  Future<void> test() async {
    log('Test location request');
    final location = await Locator.location.currentLocation;
    log('${location?.latitude}');
    log('${location?.longitude}');
    log('${location?.time?.toInt()}');
    // await _dio.post('http://ip172-18-0-24-c7m2l6abaqm000bh00eg.direct.labs.play-with-k8s.com/api/v1/test',
    //     data: {"latitude": location?.latitude, "longitude": location?.longitude, "time": location?.time?.toInt()});
  }
}
