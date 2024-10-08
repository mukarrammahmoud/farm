import 'package:farm/core/constant/routs.dart';
import 'package:get/get.dart';

abstract class HomeFarmerController extends GetxController {
  navigateToScreens(int index);
}

class HomeFarmerControllerImp extends HomeFarmerController {
  final String titleHome = "جميع الأقسام ";
  List itemHome = [
    {
      "name": "عرض المنتجات ",
      "image": "assets/images/prodects.png",
    },
    {
      "name": "العروض",
      "image": "assets/images/Vector (1).png",
    },
    {
      "name": "اضافة المنتجات ",
      "image": "assets/images/add_prodect.png",
    },
    {
      "name": "تعليقات المستخدمين",
      "image": "assets/images/comments.png",
    },
    {
      "name": "تتبع طلبات العملاء",
      "image": "assets/images/trucking.png",
    },
  ];

  @override
  navigateToScreens(int index) {
    if (index == 0) {
      Get.toNamed(AppRout.showProdect);
    }
    if (index == 1) {
      Get.toNamed(AppRout.addSalePage);
    }
    if (index == 2) {
      Get.toNamed(AppRout.addProdectPage);
    }
    if (index == 3) {
      Get.toNamed(AppRout.comments);
    }
    if (index == 4) {
      Get.toNamed(AppRout.truckingDriver);
    }
  }
}
