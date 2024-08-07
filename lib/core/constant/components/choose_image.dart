import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';


chooseimage(
    {required BuildContext context,
    required void Function()? onTapCamera,
    required void Function()? onTapGallery}) {
  showModalBottomSheet(
      elevation: 4,
      context: context,

      // shape: const CircleBorder(
      //     side: BorderSide(color: Colors.blueAccent, width: 3)),
      builder: (context) => SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(children: [
              const SizedBox(
                height: 15,
              ),
              const CustomText(
                title: "اختر صورة ",
                colorText: AppColors.greenText,
                fontSize: 22,
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: onTapCamera,
                child: const CustomText(
                  title: "من الكاميرا",
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: onTapGallery,
                child: const CustomText(
                  title: "من المعرض",
                  fontSize: 16,
                ),
              ),
            ]),
          ));
}
