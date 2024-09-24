import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const double padding = 20;

  //APP Name
  static const String appName = "The Template";

  //Theme
  static const String themeLight = "themeLight";
  static const String themeDark = "themeDark";

  //Light theme primarySwatch
  static const Map<int, Color> _lightThemePrimarySwatchMap = {
    50:  Color(0xFFd9f5e7),
    100: Color(0xFFd9f5e9),
    200: Color(0xFFd9f5eb),
    300: Color(0xFFd9f5ed),
    400: Color(0xFFd9f5ef),
    500: Color(0xFFD9D7F1),
    600: Color(0xFFd9f5f3),
    700: Color(0xFFd9f5f5),
    800: Color(0xFFd9f2f5),
    900: Color(0xFFd9eff5),
  };
  static MaterialColor lightThemePrimarySwatch = MaterialColor(const Color(0xFFD9D7F1).value, _lightThemePrimarySwatchMap);

  //Dark theme primarySwatch
  static const Map<int, Color> _darkThemePrimarySwatchMap = {
    50:  Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(0xFF000000),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  };
  static MaterialColor darkThemePrimarySwatch = MaterialColor(const Color(0xFF000000).value, _darkThemePrimarySwatchMap);

  static Color defaultBlue = const Color.fromRGBO(0, 0, 135, 1.0);
  static Color defaultGrey = const Color.fromRGBO(95, 95, 95, 1.0);
  static Color lightGrey = const Color.fromRGBO(227, 227, 227, 1.0);


  static const String dateFormatRule = "yyyy-MM-dd";
  static const String dateTimeFormatRule = "yyyy-MM-dd HH:mm";
  static const String timeFormatRule = "HH:mm";

  //Languages
  static const Locale en = Locale('en', 'US');
  static const Locale zhTW = Locale('zh', 'TW');
  static const Locale zhCN = Locale('zh', 'CN');

}