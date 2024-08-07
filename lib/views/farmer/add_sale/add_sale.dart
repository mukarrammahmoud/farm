import 'package:farm/controller/farmer/add_sale_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/farmer/add_sale/widget/card_info_prodects.dart';
import 'package:farm/views/farmer/add_sale/widget/custom_floatin_button.dart';
import 'package:farm/views/farmer/home/widgets/custom_drower.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddSalePage extends StatelessWidget {
  const AddSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AddSaleControllerImp());

    return GetBuilder<AddSaleControllerImp>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        endDrawer: const CustomDrawer(),
        floatingActionButton: CustomFloatingActionButtonSale(
          controller: controller,
          date: controller.date,
          farnmerName: controller.farmerName,
          keyAnimation: controller.key,
          prodectDesc: controller.prodectDesc,
          title: controller.title,
        ),
        appBar: AppBar(
          foregroundColor: AppColors.greenText,
          centerTitle: true,
          title: CustomText(
            title: controller.titleAppBar,
            fontSize: 16,
          ),
        ),
        body: ListView.builder(
          itemCount: controller.listInfoProddect.length,
          itemBuilder: (context, index) => CardInfoProdectsSal(
            controller: controller,
            index: index,
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
