import 'package:flutter/material.dart';

class LanguageEntity {
  String name;
  Locale locale;

  LanguageEntity(
      {
        this.name = "",
        this.locale = const Locale('en', 'US'),
      });

}
