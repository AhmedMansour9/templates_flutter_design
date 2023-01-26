import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/utill/theme/dark_theme.dart';
import 'package:webview_flutter/utill/theme/light_theme.dart';
import 'package:webview_flutter/view/home/home_provider.dart';
import 'package:webview_flutter/provider/localization_provider.dart';
import 'package:webview_flutter/view/splash/splash_provider.dart';
import 'package:webview_flutter/provider/theme_provider.dart';

import 'package:provider/provider.dart';
import 'package:webview_flutter/utill/app_constants.dart';
import 'dependency.dart' as di;
import 'helper/router_helper.dart';
import 'localization/app_localization.dart';

Future<void> main() async {
  // setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await di.initalize();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<HomeProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<SplashProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<LocalizationProvider>()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp();

  static final navigatorKey = new GlobalKey<NavigatorState>();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    RouterHelper.initRouter();
  }

  @override
  Widget build(BuildContext context) {
    List<Locale> _locals = [];
    AppConstants.languages.forEach((language) {
      _locals.add(Locale(language.languageCode!, language.countryCode));
    });

    return Consumer<SplashProvider>(
      builder: (context, splashProvider, child) {
        return MaterialApp(

          onGenerateRoute: RouterHelper.router.generator,
          title: AppConstants.APP_NAME,
          debugShowCheckedModeBanner: false,
          navigatorKey: MyApp.navigatorKey,
          theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
          locale: Provider.of<LocalizationProvider>(context).locale,
          localizationsDelegates: const [
            AppLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: _locals,
        );
      },
    );
  }
}
