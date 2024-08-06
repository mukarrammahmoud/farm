// ignore_for_file: unused_local_variable

import 'package:farm/controller/driver/auth/login_controller.dart';
import 'package:farm/views/driver/auth/widget/container_auth_field.dart';
import 'package:farm/views/driver/auth/widget/custom_image_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return Scaffold(
      body: GetBuilder<LoginControllerImp>(builder: (controller) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImageAuth(),
              const SizedBox(
                height: 10,
              ),
              ContainerAuthField(
                onPressedLogin: () {
                  controller.goToHome();
                },
                controller: controller,
                titleButton: "تسجيل",
              ),
            ],
          ),
        );
      }),
    );
  }
}
