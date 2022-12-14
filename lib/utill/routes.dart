import 'dart:convert';

class Routes {

  static const String SPLASH_SCREEN = '/';
  static const String LOGINUSER_SCREEN = '/login';
  static const String REGISTERUSER_SCREEN = '/register';


  static String getSplashRoute() => SPLASH_SCREEN;
  static String getLoginUserRoute() => LOGINUSER_SCREEN;
  static String getRegisterUserRoute() => REGISTERUSER_SCREEN;
}