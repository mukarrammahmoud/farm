import 'package:farm/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  showPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  late bool isShowPassword;
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    isShowPassword = false;
    super.onInit();
  }

  @override
  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  goToForgitPassword() {
    Get.toNamed(AppRout.forgetPassword);
  }

  goToHome() {
    Get.offAllNamed(AppRout.homeDriver);
  }

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    super.dispose();
  }
}
