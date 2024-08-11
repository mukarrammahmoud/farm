import 'package:farm/controller/splash_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => SplashControllerImp(),
    );

    return GetBuilder<SplashControllerImp>(builder: (context) {
      return Scaffold(
        backgroundColor: AppColors.splashColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Center(
              child: Image.asset(
            "assets/images/bigcart.png",
          )),
        ),
      );
    });

    // AnimatedSplashScreen(
    //   splash: 'assets/images/bigcart.png',
    //   nextScreen: const ChooseUser(),
    //   animationDuration: const Duration(seconds: 2),
    //   backgroundColor: AppColors.splashColor,
    //   splashTransition: SplashTransition.scaleTransition,
    //   curve: Curves.fastEaseInToSlowEaseOut,
    // );
  }
}
