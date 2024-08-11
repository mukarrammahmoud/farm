// ignore_for_file: unused_local_variable

import 'package:farm/controller/choose_user/choose_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/choose_user/widget/card_choosing_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseUser extends StatelessWidget {
  const ChooseUser({super.key});

  @override
  Widget build(BuildContext context) {
    ChooseControllerImp controller = Get.put(ChooseControllerImp());
    return Scaffold(
      body: GetBuilder<ChooseControllerImp>(builder: (controller) {
       
        return SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Column(
                    children: [
                      CustomText(title: "من أنت ؟"),
                      SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        title: "حدد اي واحد أدناه",
                        colorText: AppColors.greenText,
                        fontSize: 18,
                        textDecoration: TextDecoration.underline,
                      ),
                    ],
                  ),
                  CardChoosingUser(
                    onTap: () {
                      controller.goToFarmerPage();
                    },
                    imagePath: "assets/images/Farmer.png",
                    title: "مزارع",
                    description: "توريد المنتجات الزراعية للتجار والمستهلكين",
                  ),
                  CardChoosingUser(
                    onTap: () {
                      controller.goToDriverPage();
                    },
                    imagePath: "assets/images/d_bus.png",
                    title: "موصل",
                    description: "     توصيل الطلبات الى التجار والمستهلكين",
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
