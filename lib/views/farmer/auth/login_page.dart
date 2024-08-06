import 'package:farm/controller/farmer/auth/login_farmer_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/farmer/auth/widgets/custom_body_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFarmer extends StatelessWidget {
  const LoginFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginFarmerControllerImp());
    return SafeArea(
      child: GetBuilder<LoginFarmerControllerImp>(builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const CustomText(
              title: "مرحبا",
              fontSize: 18,
            ),
            backgroundColor: AppColors.white,
          ),
          body: ListView(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Image.asset(
                "assets/images/signup_farmer.png",
                height: 200,
              ),
              Container(
                decoration:
                    const BoxDecoration(color: AppColors.containerAuthColor),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                child: CustomBodyLogin(controller: controller),
              )
            ],
          ),
        );
      }),
    );
  }
}
