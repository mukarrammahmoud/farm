// import 'package:aesthetic_dialogs/aesthetic_dialogs.dart';
import 'package:farm/core/constant/routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ChangePasswordController extends GetxController {}

class ChangePasswordControllerImp extends ChangePasswordController {
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  void onInit() {
    confirmPassword = TextEditingController();
    newPassword = TextEditingController();
    super.onInit();
  }

  changePassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRout.doneConfirmPassWord);
    }
  }

  validConfirmPasswprd() {
    if (newPassword.text.trim() != confirmPassword.text.trim()) {
      return "No Reached Password.Try again";
    }
  }

  @override
  void dispose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
}
