import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safe_area/constants/app_constants.dart';
import 'package:safe_area/application/preferences/prefs_bloc.dart';
import 'package:safe_area/generated/locale_keys.g.dart';

class SettingsContent extends StatelessWidget {
  const SettingsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrefsBloc, PrefsState>(
      buildWhen: (previous, current) {
        return previous != current;
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Text(
                  LocaleKeys.settings__header.tr(),
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              brightness(context),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              language(context),
            ],
          ),
        );
      },
    );
  }
}

Widget brightness(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, right: 25, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.brightness_medium),
              const SizedBox(
                width: 5,
              ),
              Text(
                LocaleKeys.theme__header.tr(),
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        DropdownButton<ThemeMode>(
          underline: const SizedBox.shrink(),
          selectedItemBuilder: (context) {
            return [
              const SizedBox(
                width: 100,
              ),
              const SizedBox(
                width: 100,
              ),
              const SizedBox(
                width: 100,
              )
            ];
          },
          borderRadius: BorderRadius.circular(AppConstants.smallRadius),
          value: context.read<PrefsBloc>().state.themeMode,
          onChanged: (value) {
            BlocProvider.of<PrefsBloc>(context).add(PrefsEvent.changeTheme(themeMode: value ?? ThemeMode.system));
          },
          icon: const Icon(Icons.more_vert),
          items: [
            DropdownMenuItem<ThemeMode>(
              value: ThemeMode.dark,
              child: Row(
                children: [
                  Icon(Icons.dark_mode,
                      color: context.read<PrefsBloc>().state.themeMode == ThemeMode.dark ? Colors.grey : null),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Text(
                      LocaleKeys.theme__dark.tr(),
                      style: TextStyle(
                          color: context.read<PrefsBloc>().state.themeMode == ThemeMode.dark ? Colors.grey : null),
                    ),
                  ),
                ],
              ),
            ),
            DropdownMenuItem<ThemeMode>(
              value: ThemeMode.light,
              child: Row(
                children: [
                  Icon(Icons.light_mode,
                      color: context.read<PrefsBloc>().state.themeMode == ThemeMode.light ? Colors.grey : null),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Text(
                      LocaleKeys.theme__light.tr(),
                      style: TextStyle(
                          color: context.read<PrefsBloc>().state.themeMode == ThemeMode.light ? Colors.grey : null),
                    ),
                  ),
                ],
              ),
            ),
            DropdownMenuItem<ThemeMode>(
              value: ThemeMode.system,
              child: Row(
                children: [
                  Icon(Icons.smartphone,
                      color: context.read<PrefsBloc>().state.themeMode == ThemeMode.system ? Colors.grey : null),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: Text(
                      LocaleKeys.theme__system.tr(),
                      style: TextStyle(
                          color: context.read<PrefsBloc>().state.themeMode == ThemeMode.system ? Colors.grey : null),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget language(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, right: 25, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.language),
              const SizedBox(
                width: 5,
              ),
              Text(
                LocaleKeys.language__header.tr(),
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        DropdownButton<Locale>(
          underline: const SizedBox.shrink(),
          selectedItemBuilder: (context) {
            return [
              const SizedBox(
                width: 100,
              ),
              const SizedBox(
                width: 100,
              ),
            ];
          },
          borderRadius: BorderRadius.circular(AppConstants.smallRadius),
          value: context.locale,
          onChanged: (value) {
            context.setLocale(value ?? context.locale);
            BlocProvider.of<PrefsBloc>(context).add(PrefsEvent.changeLocale(locale: value ?? context.locale));
          },
          icon: const Icon(Icons.more_vert),
          items: [
            DropdownMenuItem<Locale>(
              value: const Locale('en'),
              child: Text(
                'English',
                style: TextStyle(color: context.locale == const Locale('en') ? Colors.grey : null),
              ),
            ),
            DropdownMenuItem<Locale>(
              value: const Locale('ru'),
              child: Text(
                'Русский',
                style: TextStyle(color: context.locale == const Locale('ru') ? Colors.grey : null),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
