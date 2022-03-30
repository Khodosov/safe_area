import 'package:flutter/material.dart';
import 'package:safe_area/constants/app_constants.dart';

class ControlButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;
  final PositionType? positionType;

  const ControlButton({Key? key, this.child, this.onTap, this.positionType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
      topLeft: positionType == PositionType.top || positionType == PositionType.solo
          ? const Radius.circular(AppConstants.smallRadius)
          : Radius.zero,
      topRight: positionType == PositionType.top || positionType == PositionType.solo
          ? const Radius.circular(AppConstants.smallRadius)
          : Radius.zero,
      bottomLeft: positionType == PositionType.bottom || positionType == PositionType.solo
          ? const Radius.circular(AppConstants.smallRadius)
          : Radius.zero,
      bottomRight: positionType == PositionType.bottom || positionType == PositionType.solo
          ? const Radius.circular(AppConstants.smallRadius)
          : Radius.zero,
    );
    return Material(
      borderRadius: borderRadius,
      color: Theme.of(context).cardColor.withOpacity(0.7),
      child: InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      ),
    );
  }
}

enum PositionType {
  top,
  middle,
  bottom,
  solo,
}
