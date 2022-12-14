import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/routes.dart';
import 'package:webview_flutter/view/not_found.dart';

import '../view/splash/splash_screen.dart';



class RouterHelper {
  static final FluroRouter router = FluroRouter();

//*******Handlers*********
  static Handler _splashHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => SplashScreen());
  static final Handler _emptyPageHandler = Handler(handlerFunc: (context, Map<String, dynamic> params) => EmptyPage());


//*******Route Define*********
  static void setupRouter() {
    router.notFoundHandler = _emptyPageHandler;
    router.define(Routes.SPLASH_SCREEN, handler: _splashHandler, transitionType: TransitionType.fadeIn);

  }
}