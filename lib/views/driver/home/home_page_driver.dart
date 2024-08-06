import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farm/controller/driver/home_driver_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/driver/home/widget/card_demand.dart';
import 'package:farm/views/driver/home/widget/icon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageDriver extends StatelessWidget {
  const HomePageDriver({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeDriverControllerImp());
    // HomeDriverControllerImp controller = Get.put(HomeDriverControllerImp());

    return GetBuilder<HomeDriverControllerImp>(builder: (controller) {
      return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            letIndexChange: (value) {
              return true;
            },
            animationCurve: Curves.easeInCirc,
            index: 0,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: AppColors.buttonColor,
            color: AppColors.greyText,
            animationDuration: const Duration(milliseconds: 100),
            items: const <Widget>[
              IconBottomBar(
                iconName: Icons.shopping_cart_rounded,
              ),
              IconBottomBar(
                iconName: Icons.home,
              ),
              IconBottomBar(
                iconName: Icons.favorite,
              ),
              // Icon(Icons.shopping_cart_rounded,),
              // Icon(Icons.home),
              // Icon(Icons.favorite),
            ],
            onTap: (index) {}),
        body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                controller.goToTrackingDemand();
              },
              child: CardDemand(
                onPressedCancel: () {},
                onPressedAccept: () {},
              ),
            );
          },
        ),
      );
    });
  }
}
