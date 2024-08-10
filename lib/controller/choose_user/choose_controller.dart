import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

abstract class ChooseController extends GetxController {
  goToDriverPage();
  goToFarmerPage();
}

class ChooseControllerImp extends ChooseController {
  @override
  goToDriverPage() {
    Get.toNamed(AppRout.login);
  }

  @override
  goToFarmerPage() {
    Get.toNamed(AppRout.loginFarmer);
  }
}
