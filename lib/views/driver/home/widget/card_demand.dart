import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:flutter/material.dart';

class CardDemand extends StatelessWidget {
  const CardDemand({
    required this.onPressedAccept,
    super.key,
    required this.onPressedCancel,
  });
  final void Function()? onPressedCancel;
  final void Function()? onPressedAccept;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColors.white,
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            children: [
              ContainerLog(
                widthButton: 110,
                onPressed: onPressedAccept,
                title: "قبول الطلب",
                fontSize: 11,
              ),
              ContainerLog(
                widthButton: 110,
                onPressed: onPressedCancel,
                title: "تم",
                fontSize: 11,
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                title: "رقم الطلب:22",
                fontSize: 12,
              ),
              CustomText(
                title: "عنوان التوصيل:شارع حدة -أمام سام مول ",
                fontSize: 12,
              ),
              CustomText(
                title: "  اسم العميل:سعد محمد",
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
