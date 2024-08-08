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
    return SizedBox(
      width: widthButton,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.buttonColor),
        ),
        onPressed: onPressed,
        child: CustomText(
          title: title,
          fontSize: fontSize,
          colorText: AppColors.white,
        ),
      ),
    );
  }
}
