import 'package:get/get.dart';

abstract class AddProdectController extends GetxController {
  goToEditProdect();
}

class AddprodectControllerImp extends AddProdectController {
  // Get.lazyPut(() => AnimationService());
  // final AnimationService animationService = Get.put(AnimationService());
  // late Animation<double> animation;
  // late AnimationController animationController;

  @override
  void onInit() {

    // animationService.init();

     super.onInit();// TickerProvider هنا);
  }

  bool isEnableProdect = true;
  int index = 0;
  List listInfoProddect = [
    {
      "id": 0,
      "image": "assets/images/apple.png",
      "nameFarmer": "مزرعة محمد علي",
      "nameProdect": "تفاح احمر ",
      "date": " 2-5-2024",
      "description":
          "قطوف التفاح  بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم"
    },
    {
      "id": 1,
      "image": "assets/images/apple.png",
      "nameFarmer": "مزرعة محمد علي",
      "nameProdect": "تفاح احمر ",
      "date": " 2-5-2024",
      "description":
          "قطوف التفاح  بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم"
    },
  ];

  final String titleAppBar = "إضافة المنتجات ";

  @override
  goToEditProdect() {}
  enableProdect(bool val, int ind) {
    isEnableProdect = val;
    index = ind;
    update();
  }
}

// class AnimationService extends GetxService {
//   late Animation<double> animation;
//   late AnimationController animationController;

//   void init(TickerProvider vsync) {
//     animationController = AnimationController(
//       vsync: vsync,
//       duration: const Duration(milliseconds: 260),
//     );

//     final curvedAnimation =
//         CurvedAnimation(curve: Curves.easeInOut, parent: animationController);
//     animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
//   }

//   void startAnimation() {
//     animationController.forward();
//   }

//   double get animationValue => animation.value;
// }
