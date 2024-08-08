import 'dart:io';

import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:farm/core/constant/components/choose_image.dart';
import 'package:farm/core/functions/choose_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

abstract class AddSaleController extends GetxController {
  goToEditProdectSal();
  showDateDialog(BuildContext context);
  chooseImage(BuildContext context);
}

class AddSaleControllerImp extends AddSaleController {
  final String titleAppBar = "العروض";
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();
  late TextEditingController farmerName;
  late TextEditingController prodectDesc;
  late TextEditingController daysall;
  late String date;
  final String title = "ادراج عرض  جديد";
  late DateTime selectDate;
  File? myFile;
  bool isEnableProdect = true;
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
  goToEditProdectSal() {}

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
  }

  @override
  void onInit() {
    selectDate = DateTime.now();
    prodectDesc = TextEditingController();
    daysall = TextEditingController();

    farmerName = TextEditingController();
    date = DateTime.now().toString();

    super.onInit();
  }
    @override
  void dispose() {
    prodectDesc.dispose();
    farmerName.dispose();
    daysall.dispose();
    super.dispose();
  }
}
