import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

abstract class HomeDriverController extends GetxController {
  goToTrackingDemand();
  showDemandData();
}

class HomeDriverControllerImp extends HomeDriverController {
  int index = 0;
  @override
  goToTrackingDemand() {
    Get.toNamed(AppRout.trackingDemand);
  }

  updateIndex(int inx) {
    index = inx;
    update();
  }

  goToProfileDriver() {
    Get.toNamed(AppRout.profileDriver);
  }

  @override
  showDemandData() {}
}
