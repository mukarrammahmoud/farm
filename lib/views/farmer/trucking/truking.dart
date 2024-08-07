import 'package:farm/controller/farmer/truking_driver_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:get/get.dart';

class TruckingDriver extends StatelessWidget {
  const TruckingDriver({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TrukingControllerImp());
    return GetBuilder<TrukingControllerImp>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: AppColors.greenText,
          title: CustomText(
            title: controller.title,
            fontSize: 14,
          ),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //     letIndexChange: (value) {
        //       return true;
        //     },
        //     animationCurve: Curves.easeInCirc,
        //     index: 0,
        //     backgroundColor: Colors.transparent,
        //     buttonBackgroundColor: AppColors.buttonColor,
        //     color: AppColors.greyText,
        //     animationDuration: const Duration(milliseconds: 100),
        //     items: const <Widget>[
        //       IconBottomBar(
        //         iconName: Icons.shopping_cart_rounded,
        //       ),
        //       IconBottomBar(
        //         iconName: Icons.home,
        //       ),
        //       IconBottomBar(
        //         iconName: Icons.favorite,
        //       ),
        //       // Icon(Icons.shopping_cart_rounded,),
        //       // Icon(Icons.home),
        //       // Icon(Icons.favorite),
        //     ],
        //     onTap: (index) {}),
        body: SafeArea(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              EasyStepper(
                  disableScroll: false,
                  activeStepBackgroundColor: AppColors.waitTruckingColor,
                  finishedStepBackgroundColor:
                      const Color.fromRGBO(167, 202, 154, 1),
                  unreachedStepBackgroundColor: AppColors.textNamerpodectColor,
                  alignment: Alignment.center,
                  direction: Axis.vertical,
                  textDirection: TextDirection.rtl,

                  // showTitle: false,
                  activeStep: 3,
                  showScrollbar: true,
                  activeStepTextColor: AppColors.black,
                  finishedStepTextColor: AppColors.black,
                  internalPadding: 3,
                  showLoadingAnimation: false,
                  stepRadius: 28,
                  showStepBorder: true,
                  steps: [
                    EasyStep(
                      topTitle: false,
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/from_farmer_icon.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: 'من المزرعة',
                    ),
                    EasyStep(
                      topTitle: false,
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/checked.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: 'تأكيد الطلب  ',
                    ),
                    EasyStep(
                      topTitle: false,
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/truck.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: 'يتم شحنها',
                    ),
                    EasyStep(
                      topTitle: false,
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/bus.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: 'الانطلاق',
                    ),
                    EasyStep(
                      topTitle: false,
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/v.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: 'تسليم الطلب ',
                    ),
                  ],
                  onStepReached: (index) {
                    print(index);
                  }
                  // setState(() => activeStep = index),
                  ),
            ],
          ),
        ),
      );
    });
  }
}
