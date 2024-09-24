import 'package:basic_landing_with_get/core/widgets/navigate/bottom_navi_bar.dart';
import 'package:basic_landing_with_get/core/widgets/settings/language_select_icon_button.dart';
import 'package:basic_landing_with_get/features/landing_navigate/presentation/widgets/landing_page_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class F10LandingPage extends StatelessWidget {
  const F10LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("landing_page".tr),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: LanguageSelectIconButton(),
          ),
        ],
      ),
      body: const LandingPageBody(),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}
