import 'package:basic_landing_with_get/core/controllers/setting_controller.dart';
import 'package:basic_landing_with_get/features/book_search/presentation/controllers/book_search_controller.dart';
import 'package:basic_landing_with_get/features/landing_navigate/business/entities/navi_item_entity.dart';
import 'package:basic_landing_with_get/features/landing_navigate/presentation/controllers/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNaviBar extends GetView<SettingController> {
  BottomNaviBar({super.key});

  final List<NaviItemEntity> iconList = [
    NaviItemEntity(iconData: Icons.home, toPage: "/F10"),
    NaviItemEntity(iconData: Icons.auto_stories_outlined, toPage: "/F20"),
  ];
  final double containerWidth = Get.width;

  final SettingController settingController = Get.find();
  final LandingController landingController = Get.find();
  final BookSearchController bookSearchController = Get.find();
  final double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).dialogBackgroundColor,
      ),
      child: _buildPageIcon(),
    );
  }

  ///Create menu item for each page
  Widget _buildPageIcon() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Obx(() {
          return InkWell(
            borderRadius: BorderRadius.circular(20.0),
            onTap: () {
              if(controller.currentBottomNaviSelect.value == index){
                return;
              }
              controller.currentBottomNaviSelect.value = index;
              switch (iconList[index].toPage) {
                case "/F10":
                  //If any initialize or refresh work for F10 page, can be write here.
                  landingController.initF10();
                  break;
                case "/F20":
                  //If any initialize or refresh work for F20 page, can be write here.
                  bookSearchController.initF20();
                  break;
              }
              Get.offAndToNamed(iconList[index].toPage);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: (containerWidth - (iconSize * iconList.length)) /
                    (iconList.length * 2),
              ),
              child: BottomItem(
                item: iconList[index],
                isHighlight: controller.currentBottomNaviSelect.value == index,
              ),
            ),
          );
        });
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 10,
        );
      },
      itemCount: iconList.length,
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({
    super.key,
    required this.item,
    required this.isHighlight,
  });

  final NaviItemEntity item;
  final bool isHighlight;

  @override
  Widget build(BuildContext context) {
    return Icon(
      item.iconData,
      color: isHighlight
          ? Theme.of(Get.context!).highlightColor
          : Theme.of(Get.context!).disabledColor,
      size: isHighlight ? 40 : 30,
    );
  }
}
