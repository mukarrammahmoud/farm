import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class ProfileDriver extends StatelessWidget {
  const ProfileDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerAuthColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "assets/images/man.png",
                    width: 150,
                    height: 250,
                  ),
                ),
              ),
              const CustomText(
                  title: "الاسم : محمد علي", colorText: AppColors.splashColor),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                title: "Email :  Mohamed@gmail.com",
                fontSize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
