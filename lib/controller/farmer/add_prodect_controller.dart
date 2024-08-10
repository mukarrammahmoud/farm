import 'dart:io';

import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:farm/core/constant/components/choose_image.dart';
import 'package:farm/core/functions/choose_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

abstract class AddProdectController extends GetxController {
  goToEditProdect();
  showDateDialog(BuildContext context);
  chooseImage(BuildContext context);
  savedData();
}

class AddprodectControllerImp extends AddProdectController {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();
        GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController farmerName;
  late TextEditingController prodectDesc;

  late String date;
  final String title = "ادرج منتج جديد";
  late DateTime selectDate;
  File? myFile;
  // Get.lazyPut(() => AnimationService());
  // final AnimationService animationService = Get.put(AnimationService());
  // late Animation<double> animation;
  // late AnimationController animationController;

  @override
  void onInit() {
    selectDate = DateTime.now();
    prodectDesc = TextEditingController();

    farmerName = TextEditingController();
    date = DateTime.now().toString();

    super.onInit();
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

  @override
  chooseImage(BuildContext context) {
    chooseimage(
      context: context,
      onTapGallery: () async {
        myFile = await chooseImageFromGallery();
        update();
      },
      onTapCamera: () async {
        myFile = await chooseImageFromCamera();
        update();
      },
    );

    update();
  }

  @override
  showDateDialog(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
    ).then((value) {
      if (value == null) return;

      selectDate = value;
      date = DateFormat('yyyy-M-d').format(selectDate);
      update();
    });
    update();
    //  showDatePicker(context: context, initialDate: DateTime.now(), firstDate: , lastDate: )
  }

  @override
  void dispose() {
    prodectDesc.dispose();
    farmerName.dispose();

    super.dispose();
  }

  @override
  savedData() {}
}
