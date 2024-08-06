import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.greenText,
      width: MediaQuery.of(context).size.width / 1.5,
    );
    
  }
}
