import 'package:farm/controller/driver/auth/change_pass_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/core/functions/valid_input.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';

class ContainewrChangePass extends StatelessWidget {
  const ContainewrChangePass({
    super.key,
    required this.controller,
    required this.titleButton,
    required this.onPressedButton,
  });
  final ChangePasswordControllerImp controller;
  final String titleButton;
  final void Function()? onPressedButton;
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
      child: Form(
        key: controller.formstate,
        child: Column(children: [
          const CustomText(
            title: "ادخل كلمة المرور الجديدة",
            fontSize: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            iconPrifex: const Icon(
              Icons.lock,
            ),
            padding: 2,
            hintText: "أدخل كلمة المرور الجديدة",
            isVissabileContent: true,
            validate: (val) {
              return validInput(val!, 5, 15, "password");
            },
            controller: controller.newPassword,
          ),
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            iconPrifex: const Icon(
              Icons.lock,
            ),
            padding: 2,
            hintText: "تأكيد كلمة المرور ",
            isVissabileContent: true,
            validate: (val) {
              return controller.validConfirmPasswprd();
            },
            controller: controller.confirmPassword,
          ),
          ContainerLog(onPressed: onPressedButton, title: titleButton)
        ]),
      ),
    );
  }
}
