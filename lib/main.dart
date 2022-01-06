import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/presentation/tips/tips_screen.dart';

import 'application/di.dart';
import 'application/preferences/prefs_bloc.dart';
import 'constants/app_constants.dart';

void main() {
  Locator.initLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PrefsBloc>(
          create: (_) => PrefsBloc(),
        ),
      ],
      child: BlocBuilder<PrefsBloc, PrefsState>(
        buildWhen: (previous, current) {
          return previous.themeMode != current.themeMode;
        },
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: AppConstants.theme,
            darkTheme: AppConstants.darkTheme,
            navigatorObservers: [routeObserver],
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/tips':
                  return MaterialPageRoute(builder: (context) => const TipsScreen(), settings: settings);
                // case '/settings':
                //   return MaterialPageRoute(builder: (context) => const SettingsScreen(), settings: settings);
              }
            },
            initialRoute: '/tips',
          );
        },
      ),
    );
  }
}
