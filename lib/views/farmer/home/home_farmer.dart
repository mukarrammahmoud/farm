import 'package:farm/controller/farmer/home_farmer_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/farmer/home/widgets/card_of_department.dart';
import 'package:farm/views/farmer/home/widgets/custom_drower.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeFarmer extends StatelessWidget {
  const HomeFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeFarmerControllerImp());

    return GetBuilder<HomeFarmerControllerImp>(builder: (controller) {
      return Scaffold(
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          foregroundColor: AppColors.greenText,

          // elevation: 2,
          centerTitle: true,
          title: CustomText(title: controller.titleHome, fontSize: 18),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(30),
          itemCount: controller.itemHome.length,
          semanticChildCount: 30,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 30,
            crossAxisCount: 2,
            mainAxisSpacing: 30,
          ),
          itemBuilder: (context, index) => CardDepartment(
            onTap: () {
              controller.navigateToScreens(index);
            },
            pathImage: controller.itemHome[index]["image"],
            title: controller.itemHome[index]["name"],
          ),
        ),
      );
    });
  }
}
