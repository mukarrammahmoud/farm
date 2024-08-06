// ignore_for_file: file_names

import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.keyboardType = TextInputType.name,
    this.icon,
    this.iconPrifex,
    this.padding = 10,
    required this.hintText,
    required this.isVissabileContent,
    required this.validate,
    required this.controller,
    this.autoFoucs = false,
    this.fillColor = AppColors.white,
  });
  final Widget? icon;
  final Widget? iconPrifex;
  final Color fillColor;
  final String hintText;
  final bool isVissabileContent;
  final bool autoFoucs;
  final String? Function(String? val) validate;
  final double padding;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        autofocus: autoFoucs,
        controller: controller,
        keyboardType: keyboardType,
        validator: validate,
        obscureText: isVissabileContent,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10, vertical: padding),
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.greyText, fontSize: 15),
            fillColor: fillColor,
            filled: true,
            prefix: icon,

            // prefixStyle: const TextStyle(color: AppColors.greenText),
            suffixIcon: iconPrifex,
            suffixIconColor: AppColors.greenText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    color: AppColors.containerAuthColor, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: AppColors.containerAuthColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: AppColors.containerAuthColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: AppColors.containerAuthColor))),
      ),
    );
  }
}
