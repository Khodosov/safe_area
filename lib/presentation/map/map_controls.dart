import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:safe_area/constants/app_constants.dart';

class MapControls extends StatelessWidget {
  final MapController controller;
  const MapControls({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.7),
        borderRadius: BorderRadiusDirectional.circular(AppConstants.smallRadius),
      ),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              controller.move(controller.center, controller.zoom + AppConstants.zoom);
            },
            icon: const Icon(Icons.zoom_in),
          ),
          IconButton(
            onPressed: () {
              controller.move(controller.center, controller.zoom - AppConstants.zoom);
            },
            icon: const Icon(Icons.zoom_out),
          ),
        ],
      ),
    );
  }
}
