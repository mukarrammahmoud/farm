import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class ContainerLog extends StatelessWidget {
  const ContainerLog(
      {super.key,
      this.widthButton = 120,
      required this.onPressed,
      required this.title,
      this.fontSize = 16});

  final String title;
  final void Function()? onPressed;
  final double fontSize;
  final double widthButton;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: widthButton,
        child: Container(
          alignment: Alignment.center,
          width: widthButton,
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.splashColor,
            borderRadius: BorderRadius.circular(12),
            // gradient: const LinearGradient(
            //   colors: [
            //     AppColors.buttonColorOne,
            //     AppColors.buttonColorTow,
            //     AppColors.buttonColorThree,
            //   ],
            // ),
          ),
          child: CustomText(
            title: title,
            fontSize: fontSize,
            colorText: AppColors.white,
          ),
        ),
      ),
    );
  }
}
