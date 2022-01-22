import 'package:flutter/material.dart';
import 'package:safe_area/application/di.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: const Icon(Icons.place),
        onPressed: () {
          Locator.network.test();    
        },
      ),
    );
  }
}
