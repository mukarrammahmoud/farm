import 'package:farm/controller/driver/auth/change_pass_controller.dart';
import 'package:farm/views/driver/auth/widget/custom_image_auth.dart';
import 'package:farm/views/driver/change_pass/widget/container_change_pass.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ChangePasswordControllerImp());
    return Scaffold(
      body: GetBuilder<ChangePasswordControllerImp>(builder: (controller) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImageAuth(),
              const SizedBox(
                height: 15,
              ),
              ContainewrChangePass(
                onPressedButton: () {
                  controller.changePassword();
                },
                controller: controller,
                titleButton: "تأكيد",
              ),
            ],
          ),
        );
      }),
    );
  }
}
