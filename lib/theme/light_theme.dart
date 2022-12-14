import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/dimensions.dart';

ThemeData light = ThemeData(
  fontFamily: 'Medium',
  primaryColor: const Color(0xFF491249),//#491249

  brightness: Brightness.light,
  accentColor: Colors.white,
  focusColor: const Color(0xFFADC4C8),
  hintColor: const Color(0xFF52575C),


  textTheme: const TextTheme(

    headline1: TextStyle(fontWeight: FontWeight.w300, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline2: TextStyle(fontWeight: FontWeight.w400, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline4: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline5: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline6: TextStyle(fontWeight: FontWeight.w800, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    caption: TextStyle(fontWeight: FontWeight.w900, fontSize: Dimensions.FONT_SIZE_DEFAULT),

  ),
);