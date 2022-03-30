import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/di.dart';
import 'package:safe_area/application/map_manage/map_manager_bloc.dart';
import 'package:safe_area/constants/app_constants.dart';
import 'package:safe_area/presentation/widgets/control_button.dart';

class MapControls extends StatelessWidget {
  const MapControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ControlButton(
              positionType: PositionType.top,
              onTap: () {
                Locator.mapController
                    .move(Locator.mapController.center, Locator.mapController.zoom + AppConstants.zoom);
              },
              child: const Icon(Icons.zoom_in),
            ),
            ControlButton(
              positionType: PositionType.bottom,
              onTap: () {
                Locator.mapController
                    .move(Locator.mapController.center, Locator.mapController.zoom - AppConstants.zoom);
              },
              child: const Icon(Icons.zoom_out),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        ControlButton(
          positionType: PositionType.solo,
          onTap: () {
            BlocProvider.of<MapManagerBloc>(context).add(const MapManagerEvent.centerCamera());
          },
          child: const Icon(Icons.place),
        ),
      ],
    );
  }
}
