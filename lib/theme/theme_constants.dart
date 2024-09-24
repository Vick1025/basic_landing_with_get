import 'package:basic_landing_with_get/constants/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  // primaryColor: const Color(0xFFE5BA73),
  primaryColor: const Color(0xff14CAB4),
  // dialogBackgroundColor: const Color(0xFFC58940),
  dialogBackgroundColor: const Color(0xff59C6DE),
  //highlightColor: const Color(0xFFF8F988),
  highlightColor: const Color(0xff29E252),
  // cardColor: const Color(0xFFFAEAB1),
  cardColor: const Color(0xffFFA902),
  // hintColor: const Color.fromRGBO(149, 149, 149, 1.0),
  hintColor: const Color(0xff5A6379),
  // dividerColor: const Color.fromRGBO(227, 227, 227, 1.0),
  // disabledColor: const Color.fromRGBO(227, 227, 227, 1.0),
  //canvasColor: const Color(0xFFC58940),
  canvasColor: const Color(0xfff5f5f5),
  secondaryHeaderColor: const Color(0xFFFAF8F1),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFF5F5F5),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff14CAB4),
    actionsIconTheme: IconThemeData(
      color: Color(0xffB85DEF),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.blue,
  ),


  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    bodyLarge: TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: Colors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 8,
      color: Colors.black,
    ),
  ),

  buttonTheme: const ButtonThemeData(
    height: 45,
  ),
);

//primaryColor 0A 26 47
//highlightColor 2C 74 B3
//dialogBackgroundColor 14 42 72
//canvasColor 20 52 95
//secondaryHeaderColor B6 EA DA

ThemeData darkThemeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.dark,
  primaryColor: const Color.fromRGBO(10, 38, 71, 1.0),
  primarySwatch: Constants.lightThemePrimarySwatch,
  dialogBackgroundColor: const Color.fromRGBO(20, 66, 114, 1.0),
  highlightColor: const Color.fromRGBO(227, 227, 227, 1.0),
  cardColor: const Color.fromRGBO(32, 82, 149, 0.8),
  hintColor: const Color.fromRGBO(149, 149, 149, 1.0),
  dividerColor: const Color.fromRGBO(227, 227, 227, 1.0),
  disabledColor: const Color.fromRGBO(44, 116, 179, 1.0),
  canvasColor: const Color.fromRGBO(32, 82, 149, 1.0),
  secondaryHeaderColor: const Color(0XFFB6EADA),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromRGBO(10, 38, 71, 1.0),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(20, 66, 114, 1.0),
      actionsIconTheme: IconThemeData(
        color: Colors.white,
      )),
  iconTheme: const IconThemeData(
    color: Colors.blue,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    displaySmall: TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    bodyLarge: TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      color: Colors.white,
    ),
    labelLarge: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
    labelSmall: TextStyle(
      fontSize: 8,
      color: Colors.white,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    height: 45,
  ),
);

// Red: e3706c (Example: header & button's  background)
// Dark grey: 272727 (Example: Words)
// Light grey: 959595
// Green: 51b233
// Blue: 000087
