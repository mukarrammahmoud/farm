import 'package:farm/core/constant/routs.dart';
import 'package:farm/core/services/services.dart';
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
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

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
    if (formstate.currentState!.validate()) {
      MyServices myServices = Get.find();
      myServices.sharedPreferences.setString("login", "done");
      myServices.sharedPreferences.setString("type", "farmer");
      Get.toNamed(AppRout.homeFarmer);
    }
  }

  @override
  void dispose() {
    password.dispose();
    nameUser.dispose();
    super.dispose();
  }
}
