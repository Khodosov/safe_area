import 'package:dio/dio.dart';
import 'package:safe_area/application/di.dart';

class NetworkRequests {
  final _dio = Dio();

  Future<void> test() async {
    // {"latitude":0.5,"longitude":0.5,"time":0}
    final location = await Locator.location.currentLocation;
    final response = await _dio.post('http://ip172-18-0-14-c7ltbvdrie6000ddc2r0.direct.labs.play-with-k8s.com/api/v1/test',
        data: {"latitude": location?.latitude, "longitude": location?.longitude, "time": location?.time});
    print('Status code: ${response.statusCode}');
  }
}
