import 'package:farm/controller/driver/auth/password_forget.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';

class ContainerForgetPass extends StatelessWidget {
  const ContainerForgetPass({
    super.key,
    required this.controller,
    required this.titleButton,
    required this.onPressedButton,
  });
  final ForgetPasswordControllerImp controller;
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
      child: Column(children: [
        const CustomText(
          title: "نسيت كلمة المرور",
          fontSize: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        const CustomText(
          title: "ادخل بريدك الالكتروني لاستعادة كلمة المرور",
          fontSize: 15,
          colorText: AppColors.greenText,
        ),
        const SizedBox(
          height: 18,
        ),
        CustomTextField(
          iconPrifex: const Icon(
            Icons.lock,
          ),
          padding: 2,
          hintText: "البريد الالكتروني",
          isVissabileContent: false,
          validate: (val) {
            return null;
          },
          controller: controller.email,
        ),
        // InkWell(
        //   onTap: () {
        //     controller.goToForgitPassword();
        //   },
        //   child: const Padding(
        //     padding: EdgeInsets.only(right: 25.0, bottom: 20, top: 10),
        //     child: Align(
        //       alignment: Alignment.centerRight,
        //       child: CustomText(
        //         title: "هل نسيت كلمة المرور؟!",
        //         colorText: AppColors.greenText,
        //         fontSize: 12,
        //       ),
        //     ),
        //   ),
        // ),
        ContainerLog(onPressed: onPressedButton, title: titleButton)
      ]),
    );
  }
}
