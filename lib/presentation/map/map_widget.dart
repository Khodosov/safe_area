import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:safe_area/application/di.dart';
// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;
import 'package:safe_area/constants/app_constants.dart';
import 'package:safe_area/presentation/map/map_controls.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = MapController();
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(AppConstants.bigRadius),
            bottomLeft: Radius.circular(AppConstants.bigRadius),
          ),
          child: FlutterMap(
            mapController: controller,
            options: MapOptions(
              center: latLng.LatLng(51.5, -0.09),
              zoom: 13.0,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 30.0,
                    height: 30.0,
                    point: latLng.LatLng(51.5, -0.09),
                    builder: (ctx) => const Icon(
                      Icons.person_pin_circle_outlined,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 100,
          child: MapControls(
            controller: controller,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: IconButton(
            icon: const Icon(Icons.place),
            onPressed: () {
              Locator.network.test();
            },
          ),
        ),
      ],
    );
  }
}
