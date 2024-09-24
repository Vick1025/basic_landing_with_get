import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:basic_landing_with_get/constants/constants.dart';
import 'package:basic_landing_with_get/core/controllers/setting_controller.dart';
import 'package:basic_landing_with_get/core/widgets/shared/basic_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSelectIconButton extends StatelessWidget {
  const LanguageSelectIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AwesomeDialog(
          context: Get.context!,
          dialogType: DialogType.noHeader,
          showCloseIcon: true,
          body: const LanguageSelect(),
        ).show();
      },
      borderRadius: BorderRadius.circular(20.0),
      child: const Icon(
        Icons.language,
      ),
    );
  }
}

class LanguageSelect extends GetView<SettingController> {
  const LanguageSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: controller.locale.length * 60 + 80, //60 = 40(BasicButton height) + 20(Padding bottom), 80 = Container
      width: Get.width * 0.7,
      child: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: Constants.padding,),
              child: BasicButton(
                btnText: controller.locale[index].name,
                backColor: Theme.of(Get.context!).dialogBackgroundColor,
                onTap: () {
                  controller.setLanguage(controller.locale[index]);
                  Get.back();
                },
              ),
            );
          },
          itemCount: controller.locale.length,
        ),
      ),
    );
  }
}