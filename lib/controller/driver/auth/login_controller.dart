import 'package:farm/core/constant/routs.dart';
import 'package:farm/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginController extends GetxController {
  showPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

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
    MyServices myServices=Get.find();
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRout.homeDriver);
      myServices.sharedPreferences.setString("login", "done");
      myServices.sharedPreferences.setString("type", "driver");
    }
  }

  @override
  void dispose() {
    password.dispose();
    email.dispose();
    super.dispose();
  }
}
