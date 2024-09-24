import 'package:basic_landing_with_get/constants/field_name.dart';
import 'package:basic_landing_with_get/core/entities/language_entity.dart';
import 'package:flutter/material.dart';

class LanguageModel extends LanguageEntity {
  LanguageModel({
    super.name,
    super.locale,
  });

  factory LanguageModel.fromJson({required Map<String, dynamic> json}) =>
      LanguageModel(
        name: json[kName] ?? "",
        locale: json[kLocale] ?? const Locale('en', 'US'),
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[kName] = name;
    data[kLocale] = locale;
    return data;
  }
}
