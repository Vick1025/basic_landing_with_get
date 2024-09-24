import 'package:basic_landing_with_get/core/widgets/navigate/bottom_navi_bar.dart';
import 'package:basic_landing_with_get/core/widgets/settings/theme_select_icon_button.dart';
import 'package:basic_landing_with_get/features/book_search/presentation/widgets/book_page_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class F20BookSearchPage extends StatelessWidget {
  const F20BookSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("book_search_page".tr),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ThemeSelectIconButton(),
          ),
        ],
      ),
      body: const BookSearchPageBody(),
      bottomNavigationBar: BottomNaviBar(),
    );
  }
}
