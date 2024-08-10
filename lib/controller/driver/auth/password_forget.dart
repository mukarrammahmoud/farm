import 'package:farm/core/constant/routs.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  goToNewPassword();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  goToNewPassword() {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRout.restPassword);
    }
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
