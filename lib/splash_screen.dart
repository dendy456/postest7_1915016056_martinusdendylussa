import 'dart:async';

import 'package:get/get.dart';
import 'main.dart';
import 'Home.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      Get.off(Home());
    });
  }
}
