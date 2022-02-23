import 'package:flutter/material.dart';
import 'package:safe_area/application/di.dart';
import 'package:safe_area/constants/app_constants.dart';

class MapControls extends StatelessWidget {
  const MapControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor.withOpacity(0.7),
            borderRadius: BorderRadiusDirectional.circular(AppConstants.smallRadius),
          ),
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  Locator.mapController
                      .move(Locator.mapController.center, Locator.mapController.zoom + AppConstants.zoom);
                },
                icon: const Icon(Icons.zoom_in),
              ),
              IconButton(
                onPressed: () {
                  Locator.mapController
                      .move(Locator.mapController.center, Locator.mapController.zoom - AppConstants.zoom);
                },
                icon: const Icon(Icons.zoom_out),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor.withOpacity(0.7),
            borderRadius: BorderRadiusDirectional.circular(AppConstants.smallRadius),
          ),
          child: IconButton(
            icon: const Icon(Icons.place),
            onPressed: null,
          ),
        ),
      ],
    );
  }
}
