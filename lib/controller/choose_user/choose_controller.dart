import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

abstract class ChooseController extends GetxController {
  goToDriverPage();
  goToFarmerPage();
}

class ChooseControllerImp extends ChooseController {
  @override
  goToDriverPage() {
    Get.offNamed(AppRout.login);
  }

  @override
  goToFarmerPage() {
    Get.offNamed(AppRout.loginFarmer);
  }
}
