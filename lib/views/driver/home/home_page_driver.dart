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
            height: 40,
            width: 75,
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/man.png",
              height: 30,
              width: 50,
            ),
          ),
        ),
        //  PreferredSize(
        //   preferredSize: Size(width, height),
        //   child: const CustomAppBar(),
        // ),
        bottomNavigationBar: CurvedNavigationBar(
            letIndexChange: (value) {
              return true;
            },
            animationCurve: Curves.easeInCirc,
            index: controller.index,
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
            onTap: (index) {
              controller.updateIndex(index);
              print(controller.index);
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
