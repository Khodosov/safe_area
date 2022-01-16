import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/navigation/navigation_bloc.dart';
import 'package:safe_area/domain/models/app_tab.dart';
import 'package:safe_area/presentation/widgets/tab_icon.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(builder: (context, state) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0, top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabIcon(
                enabled: true,
                selected: state.tab == AppTab.home,
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(const NavigationEvent.changeTab(tab: AppTab.home));
                },
                icon: Icons.map,
              ),
              TabIcon(
                  enabled: true,
                  selected: state.tab == AppTab.tips,
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context).add(const NavigationEvent.changeTab(tab: AppTab.tips));
                  },
                  icon: Icons.health_and_safety),
              TabIcon(
                enabled: true,
                selected: state.tab == AppTab.settings,
                onTap: () {
                  BlocProvider.of<NavigationBloc>(context).add(const NavigationEvent.changeTab(tab: AppTab.settings));
                },
                icon: Icons.settings,
              ),
            ],
          ),
        ),
      );
    });
  }
}
