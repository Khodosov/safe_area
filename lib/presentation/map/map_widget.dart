import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:location/location.dart';
import 'package:safe_area/application/di.dart';

// ignore: library_prefixes
import 'package:latlong2/latlong.dart' as latLng;
import 'package:safe_area/application/map_manage/map_manager_bloc.dart';
import 'package:safe_area/constants/app_constants.dart';
import 'package:safe_area/presentation/map/date_save_controls.dart';
import 'package:safe_area/presentation/map/map_controls.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<LocationData?>(
      stream: Locator.locationDataSaver.locationStream(context),
      builder: (context, future) {
        if (future.hasData) {
          BlocProvider.of<MapManagerBloc>(context).add(MapManagerEvent.changeLocation(locationData: future.data!));
        }
        return BlocBuilder<MapManagerBloc, MapManagerState>(
          builder: (context, state) {
            return state.currentLocation != null
                ? Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(AppConstants.bigRadius),
                          bottomLeft: Radius.circular(AppConstants.bigRadius),
                        ),
                        child: FlutterMap(
                          mapController: Locator.mapController,
                          options: MapOptions(
                            center: latLng.LatLng(
                              state.currentLocation!.latitude ?? 0,
                              state.currentLocation!.longitude ?? 0,
                            ),
                            zoom: 13.0,
                          ),
                          layers: [
                            TileLayerOptions(
                              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                              subdomains: ['a', 'b', 'c'],
                            ),
                            PolygonLayerOptions(
                              polygons: state.polygons,
                            ),
                            MarkerLayerOptions(
                              markers: [
                                Marker(
                                  point: latLng.LatLng(
                                    state.currentLocation!.latitude ?? 0,
                                    state.currentLocation!.longitude ?? 0,
                                  ),
                                  builder: (ctx) => const Icon(
                                    Icons.account_circle_rounded,
                                    color: Colors.redAccent,
                                    size: 35,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Positioned(
                        right: 10,
                        bottom: 30,
                        child: MapControls(),
                      ),
                      const Positioned(
                        left: 10,
                        bottom: 30,
                        child: DataSaveControls(),
                      ),
                    ],
                  )
                : const Center(
                    child: Text('Error'),
                  );
          },
        );
      },
    );
  }
}
