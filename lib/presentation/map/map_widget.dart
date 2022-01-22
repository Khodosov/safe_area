import 'package:flutter/material.dart';
import 'package:safe_area/application/di.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Placeholder(),
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
