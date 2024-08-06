import 'package:farm/controller/auth/login_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';

class ContainerAuthField extends StatelessWidget {
  const ContainerAuthField({
    required this.onPressedLogin,
    super.key,
    required this.controller,
    required this.titleButton,
  });
  final LoginControllerImp controller;
  final String titleButton;
  final void Function()? onPressedLogin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        vertical: 25,
        horizontal: 10,
      ),
      decoration: const BoxDecoration(
          color: AppColors.containerAuthColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(children: [
        CustomTextField(
          hintText: "اسم المستخدم",
          isVissabileContent: false,
          validate: (val) {
            return null;
          },
          controller: controller.email,
          iconPrifex: const Icon(Icons.person_pin_outlined),
        ),
        CustomTextField(
          iconPrifex: const Icon(
            Icons.lock,
          ),
          padding: 2,
          hintText: "كلمة المرور",
          isVissabileContent: controller.isShowPassword,
          validate: (val) {
            return null;
          },
          icon: IconButton(
            icon: controller.isShowPassword
                ? const Icon(Icons.visibility)
                : const Icon(Icons.visibility_off),
            onPressed: () {
              controller.showPassword();
            },
          ),
          controller: controller.password,
        ),
        InkWell(
          onTap: () {
            controller.goToForgitPassword();
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 25.0, bottom: 20, top: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                title: "هل نسيت كلمة المرور؟!",
                colorText: AppColors.greenText,
                fontSize: 12,
              ),
            ),
          ),
        ),
        ContainerLog(onPressed: onPressedLogin, title: titleButton)
      ]),
    );
  }
}
