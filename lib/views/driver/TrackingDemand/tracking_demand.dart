import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/driver/home/widget/icon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class TrackingDemand extends StatelessWidget {
  const TrackingDemand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          letIndexChange: (value) {
            return true;
          },
          animationCurve: Curves.easeInCirc,
          index: 1,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: AppColors.greenText,
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
      body: SafeArea(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child:
                  // StepTracker(
                  //   dotSize: 20,
                  //   circleSize: 50,
                  //   selectedColor: Colors.green,
                  //   unSelectedColor: Colors.red,
                  //   stepTrackerType: StepTrackerType.indexedVertical,
                  //   pipeSize: 160,
                  //   steps: [
                  //     Steps(
                  //         description: "",
                  //         title: Text("الطلب قيد التجهيز"),
                  //         state: TrackerState.none),
                  //     Steps(
                  //         title: Text("تم الشحن"), state: TrackerState.complete),
                  //     Steps(
                  //         title: Text("الطلب في الطريق "),
                  //         state: TrackerState.disabled),
                  //     Steps(
                  //         title: Text("تم التسليم"),
                  //         state: TrackerState.disabled),
                  //   ],
                  // )

                  EasyStepper(
                      disableScroll: false,
                      activeStepBackgroundColor: AppColors.greyText,
                      finishedStepBackgroundColor: AppColors.greenText,
                      unreachedStepBackgroundColor: AppColors.greyText,
                      alignment: Alignment.center,
                      direction: Axis.vertical,
                      textDirection: TextDirection.rtl,

                      // showTitle: false,
                      activeStep: 1,
                      showScrollbar: true,
                      activeStepTextColor: AppColors.black,
                      finishedStepTextColor: AppColors.black,
                      internalPadding: 0,
                      showLoadingAnimation: false,
                      stepRadius: 30,
                      showStepBorder: true,
                      steps: [
                        EasyStep(
                          topTitle: false,
                          customStep: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/file-plus-02.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: 'الطلب قيد التجهيز',
                        ),
                        EasyStep(
                          topTitle: false,
                          customStep: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/package-check.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: 'تم الشحن ',
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
                          title: 'الطلب في الطريق',
                        ),
                        EasyStep(
                          topTitle: false,
                          customStep: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/check-contained.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: 'تم التسليم',
                        ),
                      ],
                      onStepReached: (index) {
                      }
                      // setState(() => activeStep = index),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
