import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class ListOfDemand extends StatelessWidget {
  const ListOfDemand({
    required this.address,
    required this.date,
    required this.day,
    required this.name,
    required this.idDemand,
    super.key,
  });
  final String idDemand;
  final String address;
  final String name;
  final String date;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        color: AppColors.white,
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CustomText(
                    title: "التاريخ: $date",
                    colorText: AppColors.black,
                    fontSize: 12,
                  ),
                  CustomText(
                    title: "اليوم: $day",
                    colorText: AppColors.black,
                    fontSize: 12,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    title: "رقم الطلب:$idDemand ",
                    colorText: AppColors.black,
                    fontSize: 12,
                  ),
                  CustomText(
                    title: " عنوان التوصيل:$address ",
                    colorText: AppColors.black,
                    fontSize: 12,
                  ),
                  CustomText(
                    title: "اسم العميل: $name",
                    colorText: AppColors.black,
                    fontSize: 12,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
