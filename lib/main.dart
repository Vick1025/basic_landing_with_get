import 'package:basic_landing_with_get/app_router/router.dart';
import 'package:basic_landing_with_get/core/controllers/setting_controller.dart';
import 'package:basic_landing_with_get/core/service/initial_binding.dart';
import 'package:basic_landing_with_get/features/book_search/presentation/controllers/book_search_controller.dart';
import 'package:basic_landing_with_get/features/landing_navigate/presentation/controllers/landing_controller.dart';
import 'package:basic_landing_with_get/local_string.dart';
import 'package:basic_landing_with_get/theme/theme_constants.dart';
import 'package:basic_landing_with_get/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

ThemeManager _themeManager = ThemeManager();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final settingController = Get.put(SettingController());
  await settingController.initWork();

  Get.put(LandingController());
  Get.put(BookSearchController());

  runApp(MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.cubeGrid
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = const Color.fromRGBO(231, 251, 190, 1.0)
    ..backgroundColor = const Color.fromRGBO(129, 12, 168, 1.0)
    ..indicatorColor = const Color.fromRGBO(231, 251, 190, 1.0)
    ..textColor = const Color.fromRGBO(255, 203, 203, 0.8)
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final SettingController settingController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/F00',
      onGenerateRoute: AppRouter.generateRoute,
      locale: settingController.savedLocalLanguage,
      theme: settingController.savedTheme,
      getPages: AppRouter.routes,
      themeMode: _themeManager.themeMode,
      darkTheme: darkThemeData,
      translations: LocaleString(),
      fallbackLocale: const Locale('en', 'US'),
      builder: EasyLoading.init(),
      initialBinding: InitialBinding(),
    );
  }
}
