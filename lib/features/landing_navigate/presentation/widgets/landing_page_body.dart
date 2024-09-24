import 'package:basic_landing_with_get/features/landing_navigate/presentation/controllers/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPageBody extends GetView<LandingController> {
  const LandingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Obx(() {
            return Text(controller.displayValue.toString(),);
          }),
        ],
      ),
    );
  }
}
