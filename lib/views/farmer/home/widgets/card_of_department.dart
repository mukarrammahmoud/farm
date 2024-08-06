import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class CardDepartment extends StatelessWidget {
  const CardDepartment({
    required this.onTap,
    super.key,
    required this.pathImage,
    required this.title,
  });
  final String pathImage;
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(pathImage),
            const SizedBox(
              height: 8,
            ),
            CustomText(
              title: title,
              fontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
