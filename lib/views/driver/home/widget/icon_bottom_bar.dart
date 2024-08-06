import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({
    required this.iconName,
    super.key,
  });

  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconName,
      size: 25,
      color: AppColors.white,
    );
  }
}
