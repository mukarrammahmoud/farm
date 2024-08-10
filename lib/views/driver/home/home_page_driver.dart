import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farm/controller/driver/home_driver_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/driver/home/widget/List_of_demand.dart';
import 'package:farm/views/driver/home/widget/card_demand.dart';
import 'package:farm/views/driver/home/widget/icon_bottom_bar.dart';
import 'package:farm/views/driver/home/widget/map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageDriver extends StatelessWidget {
  const HomePageDriver({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeDriverControllerImp());
    // HomeDriverControllerImp controller = Get.put(HomeDriverControllerImp());

    return GetBuilder<HomeDriverControllerImp>(builder: (controller) {
      // double width = MediaQuery.of(context).size.width;
      // double height = MediaQuery.of(context).size.height;
      return Scaffold(
        endDrawer: const Drawer(),
        appBar: AppBar(
          foregroundColor: AppColors.splashColor,
          centerTitle: true,
          title: Image.asset(
            "assets/images/bigcart.png",
            height: 50,
            width: 100,
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: InkWell(
              onTap: () {
                controller.goToProfileDriver();
              },
              child: Image.asset(
                "assets/images/man.png",
                height: 30,
                width: 50,
              ),
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
            letIndexChange: (value) {
              return true;
            },
            animationCurve: Curves.easeInCirc,
            index: controller.index,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: AppColors.splashColor,
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
            
            ],
            onTap: (index) {
              controller.updateIndex(index);
            }),
        body: controller.index == 0
            ? ListView.builder(
                itemCount: 5,
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
              )
            : controller.index == 1
                ? const LocationMap()
                : ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const ListOfDemand(
                          address: "شارع حدة -أمام سام مول ",
                          date: "2024-3-2",
                          day: "الاحد",
                          idDemand: "22",
                          name: "محمد علي",
                        )),
      );
    });
  }
}
