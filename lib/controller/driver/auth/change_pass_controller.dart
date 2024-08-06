// import 'package:aesthetic_dialogs/aesthetic_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ChangePasswordController extends GetxController {}

class ChangePasswordControllerImp extends ChangePasswordController {
  late TextEditingController newPassword;
  late TextEditingController confirmPassword;
  @override
  void onInit() {
    confirmPassword = TextEditingController();
    newPassword = TextEditingController();
    super.onInit();
  }

  changePassword() {
    // AestheticDialogs.showDialog(
    //     title: "My Dialog",
    //     message: "Hello!!!",
    //     cancelable: true,
    //     darkMode: false,
    //     dialogAnimation: DialogAnimation.IN_OUT,
    //     dialogGravity: DialogGravity.CENTER,
    //     dialogStyle: DialogStyle.EMOJI,
    //     dialogType: DialogType.INFO,
    //     duration: 3000);
  }
}
