import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/application/navigation/navigation_bloc.dart';
import 'package:safe_area/presentation/home/home_screen.dart';
import 'application/di.dart';
import 'application/preferences/prefs_bloc.dart';
import 'constants/app_constants.dart';

void main() async {
  Locator.initLocator();
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

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PrefsBloc>(
          create: (_) => PrefsBloc(),//..add(const PrefsEvent.configPrefs()),
        ),
        BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
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
            navigatorObservers: [routeObserver],
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
