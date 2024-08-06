import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    this.colorText = AppColors.black,
    this.textDecoration = TextDecoration.none,
    this.fontSize = 30.0,
  });
  final String title;
  final Color colorText;
  final TextDecoration textDecoration;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      // maxLines: 2,
      title,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        decoration: textDecoration,
        decorationColor: AppColors.greenText,
        color: colorText,
        fontFamily: "Almarai",
        fontSize: fontSize,
      ),
    );
  }
}
