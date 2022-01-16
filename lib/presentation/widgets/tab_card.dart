import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/navigation/navigation_bloc.dart';
import 'package:safe_area/constants/app_constants.dart';
import 'package:safe_area/domain/models/app_tab.dart';
import 'package:safe_area/presentation/settings/settings.dart';
import 'package:safe_area/presentation/tips/tips.dart';

class TabCard extends StatelessWidget {
  const TabCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        Widget child = const SizedBox.expand();
        switch (state.tab) {
          case AppTab.settings:
            child = const SettingsContent();
            break;
          case AppTab.tips:
            child = const TipsContent();
            break;
          default:
            break;
        }
        return Padding(
          padding: const EdgeInsets.only(bottom: 90),
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConstants.bigRadius)),
            elevation: 10,
            child: SafeArea(
              bottom: false,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}
