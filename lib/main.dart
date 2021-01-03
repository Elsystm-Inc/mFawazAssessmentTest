import 'package:mfawazTest/utils/constants.dart';
import 'package:mfawazTest/utils/app.localization.dart';
import 'package:mfawazTest/utils/core.util.dart';
import 'package:mfawazTest/data/model/user_model.dart';
import 'package:mfawazTest/utils/route_generator.dart';
import 'package:mfawazTest/bloc/user/user_bloc.dart';
import 'package:mfawazTest/ui/style/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'bloc/settings/settings_bloc.dart';
import 'data/repositores/settings_repositoy.dart';
import 'data/repositores/user_repository.dart';
import 'ui/style/app.fonts.dart';

void main() => runApp(Root());

class Root extends StatefulWidget {
  // This widget is the root of your application.
  static String fontFamily;
  static Locale locale;
  static BuildContext appContext;
  static ThemeMode themeMode = ThemeMode.system;
  static User user;
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  bool localeLoaded = false;
  SettingsBloc settingsBloc;

  @override
  void initState() {
    settingsBloc = SettingsBloc(SettingsDataRepository());
    settingsBloc.add(LoadSettings());
    Root.fontFamily = AppFonts.fontRoboto;
    super.initState();
  }

  changeFont(Locale locale) {
    if (locale.languageCode == "ar")
      setState(() {
        Root.fontFamily = AppFonts.fontCairo;
      });
    else
      setState(() {
        Root.fontFamily = AppFonts.fontRoboto;
      });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(
            UserDataRepository(),
          ),
        ),
        BlocProvider<SettingsBloc>(create: (BuildContext context) => settingsBloc),
      ],
      child: BlocListener<SettingsBloc, SettingsState>(
        listener: (context, state) {
          if (state is SettingsLoaded) {
            setState(() {
              //print here
              Root.themeMode = state.themeMode;
              Root.locale = state.locale;
              Root.appContext = context;
              changeFont(Root.locale);
            });
          } else if (state is LocalLoaded) {
            setState(() {
              Root.locale = state.locale;
              changeFont(Root.locale);
            });
          } else if (state is ThemeModeLoaded) {
            setState(() {
              Root.themeMode = state.themeMode;
            });
          }
        },
        child: MaterialApp(
          title: Constants.appName,
          supportedLocales: ['en', 'ar'].map<Locale>((language) => Locale(language)),
          builder: (context, child) {
            return ScrollConfiguration(behavior: CustomScrollBehavior(), child: child);
          },
          debugShowCheckedModeBanner: false,
          themeMode: Root.themeMode,
          theme: ThemeData(
            textTheme: AppTheme.textTheme,
          ),
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          locale: Root.locale,
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}
