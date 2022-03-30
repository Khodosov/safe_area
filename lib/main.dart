import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/data_saver/data_saver_bloc.dart';
import 'package:safe_area/presentation/home/home_screen.dart';
import 'application/di.dart';
import 'application/map_manage/map_manager_bloc.dart';
import 'application/preferences/prefs_bloc.dart';
import 'application/tab_navigation/navigation_bloc.dart';
import 'constants/app_constants.dart';

void main() async {
  Locator.initLocator();

  Locator.hiveManager.hiveInit();
  Locator.sharedPreferencesManager.sharedPreferencesInit();
  Locator.sqfliteManager.sqfliteInit();

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const App(),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  static final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void dispose() {
    Locator.location.stopListen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PrefsBloc>(
          create: (_) => PrefsBloc(), //..add(const PrefsEvent.configPrefs()),
        ),
        BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
        ),
        BlocProvider<MapManagerBloc>(
          create: (_) => MapManagerBloc(),
        ),
        BlocProvider<DataSaverBloc>(
          create: (_) => DataSaverBloc(),
        ),
      ],
      child: BlocBuilder<PrefsBloc, PrefsState>(
        buildWhen: (previous, current) {
          return previous != current;
        },
        builder: (context, state) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            themeMode: state.themeMode,
            theme: AppConstants.theme,
            darkTheme: AppConstants.darkTheme,
            navigatorObservers: [App.routeObserver],
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/home':
                  return MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                    settings: settings,
                  );
              }
            },
            initialRoute: '/home',
          );
        },
      ),
    );
  }
}
