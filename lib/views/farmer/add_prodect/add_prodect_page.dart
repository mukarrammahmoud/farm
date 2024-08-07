import 'package:farm/controller/farmer/add_prodect_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/card_info_prodects.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/farmer/add_prodect/widgets/custom_floatin_button.dart';
import 'package:farm/views/farmer/home/widgets/custom_drower.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProdectPage extends StatelessWidget {
  const AddProdectPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AddprodectControllerImp());

    return GetBuilder<AddprodectControllerImp>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        endDrawer: const CustomDrawer(),
        appBar: AppBar(
          foregroundColor: AppColors.greenText,
          centerTitle: true,
          title: CustomText(
            fontSize: 15,
            title: controller.titleAppBar,
          ),
        ),
        floatingActionButton: CustomFloatingActionButton(
          controller: controller,
          date: controller.date,
          farnmerName: controller.farmerName,
          keyAnimation: controller.key,
          prodectDesc: controller.prodectDesc,
          title: controller.title,
        ),
        body: ListView.builder(
          itemCount: controller.listInfoProddect.length,
          itemBuilder: (context, index) => CardInfoProdects(
            goToEditProdectPage: () {
              controller.goToEditProdect();
            },
            isSwitchEnable: true,
            onChangedSwitch: (value) {},
            date: controller.listInfoProddect[index]["date"],
            nameFarmer: controller.listInfoProddect[index]["nameFarmer"],
            pathImage: controller.listInfoProddect[index]["image"],
            namePodect: controller.listInfoProddect[index]["nameProdect"],
            desc: controller.listInfoProddect[index]["description"],
          ),
        ),
      );
    });
  }
}
