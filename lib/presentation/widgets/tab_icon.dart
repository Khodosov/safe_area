import 'package:flutter/material.dart';
import 'package:safe_area/constants/app_constants.dart';

class TabIcon extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final bool selected;
  final bool enabled;
  const TabIcon({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.selected,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: !selected ? Colors.transparent : Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(AppConstants.smallRadius),
      ),
      child: IconButton(
        onPressed: enabled ? onTap : () => AppConstants.badConnection(context),
        icon: Icon(
          icon,
          color: enabled
              ? !selected
                  ? Theme.of(context).cardColor
                  : Theme.of(context).iconTheme.color
              : Colors.grey,
        ),
      ),
    );
  }
}
