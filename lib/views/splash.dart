import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/choose_user/choose_user.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/bigcart.png',
      nextScreen: const ChooseUser(),
      animationDuration: const Duration(seconds: 2),
      backgroundColor: AppColors.splashColor,
      splashTransition: SplashTransition.scaleTransition,
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }
}
