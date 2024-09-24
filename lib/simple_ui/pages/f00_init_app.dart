import 'dart:async';
import 'package:basic_landing_with_get/constants/constants.dart';
import 'package:basic_landing_with_get/core/controllers/setting_controller.dart';
import 'package:basic_landing_with_get/features/book_search/presentation/controllers/book_search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///This page just like a splash screen.
///Display logo or some description.
///Or maybe use for wait initialize done.

class F00InitApp extends StatefulWidget {
  const F00InitApp({super.key});

  @override
  State<F00InitApp> createState() => _F00InitAppState();
}

class _F00InitAppState extends State<F00InitApp> {
  final SettingController settingController = Get.find();
  final BookSearchController bookSearchController = Get.find();
  int _counter = 2;
  Timer? _timer;

  // Just a timer for simulate loading process.
  // Careful: If you want to remove this page, make sure
  // bookSearchController.initUseCase() is called in another way.
  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer?.cancel();
        bookSearchController.initUseCase();
        Get.offAndToNamed("/F10");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(Get.context!).canvasColor,
      ),
      body: _buildBody(),
    );
  }

  ///Build main content area of this page
  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.padding,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Banner
            SizedBox(
              height: Get.height * 0.35,
              width: Get.width,
              child: _bannerImage(),
            ),
          ],
        ),
      ),
    );
  }

  ///Display banner image
  Widget _bannerImage() {
    //This GestureDetector just for test purpose
    return GestureDetector(
      onTap: () {
        Get.offAndToNamed("/F01");
      },
      child: Center(
        child: Image.asset("assets/images/armadillo_logo_no_back.png"),
      ),
    );
  }
}
