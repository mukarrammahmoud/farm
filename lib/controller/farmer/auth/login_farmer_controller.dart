import 'package:farm/core/constant/routs.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginFarmerController extends GetxController {
  goToHome();
  showPassword();
}

class LoginFarmerControllerImp extends LoginFarmerController {
  final String hintUser = "اسم المستخدم";
  final String hintpass = " كلمة السر";
  late TextEditingController nameUser;
  late TextEditingController password;
  late bool isShowPassword;
  @override
  void onInit() {
    password = TextEditingController();
    nameUser = TextEditingController();
    isShowPassword = false;
    super.onInit();
  }

  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  goToHome() {
    Get.offAllNamed(AppRout.homeFarmer);
  }
}
