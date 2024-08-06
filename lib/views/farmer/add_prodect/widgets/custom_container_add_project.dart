import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/driver/auth/widget/text_field.dart';
import 'package:flutter/material.dart';

class CustomContainerAddProdect extends StatelessWidget {
  const CustomContainerAddProdect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const CustomText(
              title: "ادراج منتج جديد",
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
                    child: Image.asset(
                      "assets/images/broccoli.png",
                      // height: 200,
                      // width: 200,
                      // fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: -15,
                right: 2,
                child: IconButton(
                  icon: const Icon(
                    Icons.add_a_photo_sharp,
                    size: 16,
                    color: AppColors.black,
                  ),
                  onPressed: () async {
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
            return null;
          },
          controller: TextEditingController(),
        ),
        CustomTextField(
          fillColor: AppColors.fiilColorTextField,
          iconPrifex: const Icon(Icons.date_range),
          hintText: "اليوم   /     التاريخ /      السنه",
          isVissabileContent: false,
          validate: (val) {
            return null;
          },
          controller: TextEditingController(),
        ),
        CustomTextField(
          fillColor: AppColors.fiilColorTextField,
          iconPrifex: const Icon(Icons.edit),
          hintText: "وصف المنتج ",
          isVissabileContent: false,
          validate: (val) {
            return null;
          },
          controller: TextEditingController(),
        ),
        CustomTextField(
          fillColor: AppColors.fiilColorTextField,
          iconPrifex: const Icon(Icons.edit),
          hintText: "عرض اليوم",
          isVissabileContent: false,
          validate: (val) {
            return null;
          },
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
