import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {

  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(int themeIndex) {
    _themeMode = themeIndex == 1 ? ThemeMode.dark : ThemeMode.light;
  }
}