import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ShowProdectsController extends GetxController {
  goToEditeProdectsPage();
}

class ShowProdectsControllerImp extends ShowProdectsController {
  final String title = 'عرض المنتجات';
  late TextEditingController wordSearch;
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
      "image": "assets/images/broccoli.png",
      "nameFarmer": "مزرعة محمد علي",
      "nameProdect": "كرفس",
      "date": " 2-5-2024",
      "description":
          "قطوف التفاح  بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم"
    },
  ];
  @override
  void onInit() {
    wordSearch = TextEditingController();
    super.onInit();
  }

  @override
  goToEditeProdectsPage() {}
}
