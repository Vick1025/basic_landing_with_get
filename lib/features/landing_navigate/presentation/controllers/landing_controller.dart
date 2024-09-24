import 'package:get/get.dart';

class LandingController extends GetxController{

  var displayValue = 0.obs;

  ///Initialize all variable to make sure page F10 display correct
  initF10(){
    displayValue.value++;
  }

}