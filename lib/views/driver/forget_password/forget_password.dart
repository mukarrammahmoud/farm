import 'package:farm/controller/driver/auth/password_forget.dart';
import 'package:farm/views/driver/auth/widget/custom_image_auth.dart';
import 'package:farm/views/driver/forget_password/widget/container_forget_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // ForgetPasswordControllerImp controller=  Get.lazyPut(ForgetPasswordControllerImp());
    Get.lazyPut(() => ForgetPasswordControllerImp());
    return Scaffold(
      body: GetBuilder<ForgetPasswordControllerImp>(builder: (controller) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImageAuth(),
              const SizedBox(
                height: 15,
              ),
              ContainerForgetPass(
                onPressedButton: () {
                  controller.goToNewPassword();
                },
                controller: controller,
                titleButton: "ارسال",
              ),
            ],
          ),
        );
      }),
    );
  }
}
