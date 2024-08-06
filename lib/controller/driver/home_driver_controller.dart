import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

abstract class HomeDriverController extends GetxController {
  goToTrackingDemand();
}

class HomeDriverControllerImp extends HomeDriverController {
  @override
  goToTrackingDemand() {
    Get.toNamed(AppRout.trackingDemand);
  }
}
