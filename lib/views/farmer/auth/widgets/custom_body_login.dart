import 'package:farm/controller/farmer/auth/login_farmer_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/core/functions/valid_input.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';

class CustomBodyLogin extends StatelessWidget {
  const CustomBodyLogin({
    super.key,
    required this.controller,
  });
  final LoginFarmerControllerImp controller;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formstate,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomText(
              title: "تسجيل الدخول",
              fontSize: 20,
            ),
          ),
          CustomTextField(
            keyboardType: TextInputType.emailAddress,
            iconPrifex: const Icon(Icons.person_3),
            hintText: controller.hintUser,
            isVissabileContent: false,
            validate: (val) {
              return validInput(val!, 5, 10, "username");
            },
            controller: controller.nameUser,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            padding: 2,
            icon: IconButton(
              icon: controller.isShowPassword
                  ? const Icon(
                      Icons.visibility,
                      color: AppColors.greenText,
                    )
                  : const Icon(
                      Icons.visibility_off,
                      color: AppColors.greenText,
                    ),
              onPressed: () {
                controller.showPassword();
              },
            ),
            iconPrifex: const Icon(Icons.lock),
            hintText: controller.hintpass,
            isVissabileContent: controller.isShowPassword,
            validate: (val) {
              return validInput(val!, 5, 10, "password");
            },
            controller: controller.password,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              right: 30.0,
              left: 30.0,
            ),
            child: ContainerLog(
                widthButton: double.infinity,
                onPressed: () {
                  controller.goToHome();
                },
                title: "تسجيل الدخول"),
          )
        ],
      ),
    );
  }
}
