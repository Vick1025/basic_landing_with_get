import 'package:basic_landing_with_get/constants/constants.dart';
import 'package:basic_landing_with_get/core/entities/language_entity.dart';
import 'package:basic_landing_with_get/core/enums/shared_preferences.dart';
import 'package:basic_landing_with_get/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingController extends GetxController {
  //Basic
  Locale? savedLocalLanguage;
  ThemeData savedTheme = lightThemeData;
  final List<LanguageEntity> locale = [
    LanguageEntity(name: "English", locale: Constants.en),
    LanguageEntity(name: "繁體中文", locale: Constants.zhTW),
    LanguageEntity(name: "简体中文", locale: Constants.zhCN)
  ];
  var currentBottomNaviSelect = 0.obs;

  int displayValue = 0; //This just for test purpose

  ///Init some basic info
  initWork() async {
    savedLocalLanguage = await getLocal();
    savedTheme = await getTheme();
  }

  ///Get saved language setting, if nothing there, default is en_US
  Future<Locale> getLocal() async {
    final prefs = await SharedPreferences.getInstance();
    final String? language =
        prefs.getString(SettingType.language.name.toString());
    Locale savedLocal = const Locale("en", "US");
    if (language != null) {
      for (var element in locale) {
        if (_getLanguageSavedCode(element) == language) {
          savedLocal = element.locale;
        }
      }
    }
    return savedLocal;
  }

  ///Get saved theme setting, if nothing there, default is light theme
  Future<ThemeData> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final String? customTheme =
        prefs.getString(SettingType.theme.name.toString());
    ThemeData resultTheme = lightThemeData;

    if (customTheme != null) {
      switch (customTheme) {
        case Constants.themeLight:
          resultTheme = lightThemeData;
          break;
        case Constants.themeDark:
          resultTheme = darkThemeData;
          break;
      }
    }

    return resultTheme;
  }

  ///Save theme to shared preferences, so the app can use it next time
  void saveTheme(int theThemeCode) async {
    final prefs = await SharedPreferences.getInstance();
    String saveThemeStr = "";
    switch (theThemeCode) {
      case 0:
        saveThemeStr = Constants.themeLight;
        break;
      case 1:
        saveThemeStr = Constants.themeDark;
        break;
    }
    await prefs.setString(SettingType.theme.name.toString(), saveThemeStr);
  }

  ///Set language by user select
  setLanguage(LanguageEntity selectLanguage) async {
    EasyLoading.show(status: "loading".tr);
    final prefs = await SharedPreferences.getInstance();
    Get.updateLocale(selectLanguage.locale);
    await prefs.setString(SettingType.language.name.toString(),
        _getLanguageSavedCode(selectLanguage));
    EasyLoading.dismiss();
  }

  ///Get languageCode_countryCode, ex: zh_TW
  String _getLanguageSavedCode(LanguageEntity sourceLanguage) {
    return "${sourceLanguage.locale.languageCode}_${sourceLanguage.locale.countryCode}";
  }

  ///Get languageCode_countryCode, ex: zh-TW、en
  getLanguageCode() {
    String result = "en";
    if (savedLocalLanguage == null) {
      return result;
    }
    if (savedLocalLanguage!.languageCode == "zh") {
      result =
          "${savedLocalLanguage!.languageCode}-${savedLocalLanguage!.countryCode}";
    }
    return result;
  }

  ///Set theme by user select
  void setTheme(int theThemeIndex) {
    debugPrint("The theme index is:$theThemeIndex");
    switch (theThemeIndex) {
      case 0:
        savedTheme = lightThemeData;
        Get.changeThemeMode(ThemeMode.light);
        break;
      case 1:
        savedTheme = darkThemeData;
        Get.changeThemeMode(ThemeMode.dark);
        break;
    }
    saveTheme(theThemeIndex);
  }
}
