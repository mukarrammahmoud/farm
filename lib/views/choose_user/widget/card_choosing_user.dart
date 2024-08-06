import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class CardChoosingUser extends StatelessWidget {
  const CardChoosingUser({
    super.key,
    required this.imagePath,
    this.imageHeight = 50,
    this.imagewidth = 50,
    required this.title,
    required this.description,
    required this.onTap,
  });
  
  final String imagePath;
  final double imageHeight;
  final double imagewidth;
  final String title;
  final String description;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Image(
                height: imageHeight,
                width: imagewidth,
                fit: BoxFit.cover,
                image: AssetImage(imagePath),
              ),
              CustomText(
                title: title,
                fontSize: 14,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomText(
                title: description,
                colorText: AppColors.greyText,
                fontSize: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
