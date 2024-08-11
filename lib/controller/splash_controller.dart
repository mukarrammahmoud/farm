import 'dart:async';

import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {}

class SplashControllerImp extends SplashController {
  goToPage() {
    Timer(const Duration(seconds: 2), () {
     
      Get.offAllNamed(AppRout.chooseUser);
    });
  }

  @override
  void onInit() {
    goToPage();
    super.onInit();
  }


}
