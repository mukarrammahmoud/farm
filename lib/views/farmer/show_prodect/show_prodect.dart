import 'package:farm/controller/farmer/show_prodect_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:farm/core/constant/components/card_info_prodects.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowProdect extends StatelessWidget {
  const ShowProdect({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => ShowProdectsControllerImp(),
    );
    return GetBuilder<ShowProdectsControllerImp>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(0xffF5F5F5),
        appBar: AppBar(
          foregroundColor: AppColors.greenText,
          centerTitle: true,
          title: CustomText(
            title: controller.title,
            fontSize: 14,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_list_outlined,
                            color: AppColors.greenText,
                          ))),
                  Expanded(
                    flex: 5,
                    child: CustomTextField(
                        iconPrifex: const Icon(
                          Icons.search,
                        ),
                        hintText: "",
                        isVissabileContent: false,
                        validate: (val) {
                          return null;
                        },
                        controller: controller.wordSearch),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: controller.listInfoProddect.length,
                  itemBuilder: (context, index) => CardInfoProdects(
                    goToEditProdectPage: () {
                      controller.goToEditeProdectsPage();
                    },
                    onChangedSwitch: (val) {},
                    date: controller.listInfoProddect[index]["date"],
                    nameFarmer: controller.listInfoProddect[index]
                        ["nameFarmer"],
                    desc: controller.listInfoProddect[index]["description"],
                    namePodect: controller.listInfoProddect[index]
                        ["nameProdect"],
                    pathImage: controller.listInfoProddect[index]["image"],
                    isSwitchEnable: true,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
