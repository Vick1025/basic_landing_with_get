import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:basic_landing_with_get/constants/constants.dart';
import 'package:basic_landing_with_get/core/controllers/setting_controller.dart';
import 'package:basic_landing_with_get/core/widgets/shared/basic_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeSelectIconButton extends StatelessWidget {
  const ThemeSelectIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AwesomeDialog(
          context: Get.context!,
          dialogType: DialogType.noHeader,
          showCloseIcon: true,
          body: ThemeSelect(),
        ).show();
      },
      borderRadius: BorderRadius.circular(20.0),
      child: const Icon(
        Icons.color_lens_outlined,
      ),
    );
  }
}

class ThemeSelect extends GetView<SettingController> {
  ThemeSelect({super.key});

  final Map<String, dynamic> lightOption = {"index": 0, "displayText": "light".tr};
  final Map<String, dynamic> darkOption = {"index": 1, "displayText": "dark".tr};

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> optionList = [lightOption, darkOption];
    return SizedBox(
      height: optionList.length * 60 + 80, //60 = 40(BasicButton height) + 20(Padding bottom), 80 = Container
      width: Get.width * 0.7,
      child: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: Constants.padding,),
              child: BasicButton(
                btnText: optionList[index]["displayText"],
                backColor: Theme.of(Get.context!).dialogBackgroundColor,
                onTap: () {
                  controller.setTheme(optionList[index]["index"]);
                  Get.back();
                },
              ),
            );
          },
          itemCount: optionList.length,
        ),
      ),
    );
  }
}