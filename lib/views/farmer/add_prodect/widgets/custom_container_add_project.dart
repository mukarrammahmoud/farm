import 'package:farm/controller/farmer/add_prodect_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/core/functions/valid_input.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomContainerAddProdect extends StatelessWidget {
  const CustomContainerAddProdect(
      {super.key,
      required this.date,
      required this.controller,
      this.day,
      required this.farnmerName,
      required this.prodectDesc,
      required this.title,
      required this.onPressedSaved});
  final TextEditingController farnmerName;
  final String date;
  final String title;
  final TextEditingController prodectDesc;
  final TextEditingController? day;
  final AddprodectControllerImp controller;
  final void Function()? onPressedSaved;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formstate,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(
                title: title,
                fontSize: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                  maxRadius: 35,
                  backgroundColor: AppColors.containerAuthColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: controller.myFile == null
                        ? Image.asset(
                            "assets/images/broccoli.png",
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            controller.myFile!,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                Positioned(
                  bottom: -15,
                  right: 2,
                  child: IconButton(
                    icon: const Icon(
                      Icons.add_a_photo_sharp,
                      size: 16,
                      color: AppColors.splashColor,
                    ),
                    onPressed: () {
                      controller.chooseImage(context);
                      // await getImage();
                    },
                  ),
                )
              ]),
            ],
          ),
          CustomTextField(
            fillColor: AppColors.fiilColorTextField,
            iconPrifex: const Icon(Icons.edit),
            hintText: "اسم المزرعة",
            isVissabileContent: false,
            validate: (val) {
              return validInput(val!, 3, 20, "username");
            },
            controller: farnmerName,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 18),
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.fiilColorTextField,
            ),
            child: InkWell(
              onTap: () {
                controller.showDateDialog(context);
              },
              child: CustomText(
                title: DateFormat("yyyy-M-d").format(controller.selectDate),
                fontSize: 15,
                colorText: AppColors.black,
              ),
            ),
          ),
          // CustomTextField(
          //   fillColor: AppColors.fiilColorTextField,
          //   iconPrifex: const Icon(Icons.date_range),
          //   hintText: "اليوم   /     التاريخ /      السنه",
          //   isVissabileContent: false,
          //   validate: (val) {
          //     return null;
          //   },
          //   controller: ,
          // ),
          CustomTextField(
            fillColor: AppColors.fiilColorTextField,
            iconPrifex: const Icon(Icons.edit),
            hintText: "وصف المنتج ",
            isVissabileContent: false,
            validate: (val) {
              return validInput(val!, 3, 20, "username");
            },
            controller: prodectDesc,
          ),
          ContainerLog(
            onPressed: onPressedSaved,
            title: "حفظ",
          ),
        ],
      ),
    );
  }
}
