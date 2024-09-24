import 'package:basic_landing_with_get/features/book_search/presentation/pages/f20_book_search_page.dart';
import 'package:basic_landing_with_get/features/landing_navigate/presentation/pages/f10_landing_page.dart';
import 'package:basic_landing_with_get/simple_ui/pages/f00_init_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouter {
  static int basicDuration = 500;

  static final routes = [
    GetPage(
      name: '/F00',
      page: () => const F00InitApp(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: basicDuration),
    ),
    GetPage(
      name: '/F10',
      page: () => const F10LandingPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: basicDuration),
    ),
    GetPage(
      name: '/F20',
      page: () => const F20BookSearchPage(),
      transition: Transition.fade,
      transitionDuration: Duration(milliseconds: basicDuration),
    ),
  ];

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/F00':
        return MaterialPageRoute(builder: (_) => const F00InitApp());
      case '/F10':
        return MaterialPageRoute(builder: (_) => const F10LandingPage());
      case '/F20':
        return MaterialPageRoute(builder: (_) => const F20BookSearchPage());
      default:
        return MaterialPageRoute(builder: (_) => const F00InitApp());
    }
  }
}
