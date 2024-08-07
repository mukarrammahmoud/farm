import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class CardInfoProdects extends StatelessWidget {
  const CardInfoProdects({
    super.key,
    required this.onChangedSwitch,
    required this.date,
    required this.nameFarmer,
    required this.desc,
    required this.namePodect,
    required this.pathImage,
    required this.isSwitchEnable,
    required this.goToEditProdectPage,
  });
  final void Function(bool)? onChangedSwitch;
  final String pathImage;
  final String namePodect;
  final String desc;
  final String date;
  final String nameFarmer;
  final void Function()? goToEditProdectPage;
  final bool isSwitchEnable;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(19),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_document,
                            size: 30,
                          ),
                        ),
                        const CustomText(
                          title: "تعديل",
                          fontSize: 12,
                        )
                      ],
                    ),
                    Switch(
                      inactiveThumbColor: AppColors.white,
                      inactiveTrackColor: AppColors.black,
                      activeColor: AppColors.white,
                      activeTrackColor: AppColors.greenText,
                      value: isSwitchEnable,
                      onChanged: onChangedSwitch,
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(
                              title: namePodect,
                              colorText: AppColors.textNamerpodectColor,
                              fontSize: 16,
                            ),
                            CustomText(
                              title: nameFarmer,
                              fontSize: 14,
                            ),
                            CustomText(
                              title: date,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        CircleAvatar(
                          // maxRadius: 30,
                          backgroundColor: AppColors.buttonColor,
                          child: ClipRRect(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset(
                              pathImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomText(title: "الوصف الخاصة بك:", fontSize: 16),
                    CustomText(fontSize: 12, title: desc),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
