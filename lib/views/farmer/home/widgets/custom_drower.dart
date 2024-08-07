import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.backGroundDrawerColorOne,
      width: MediaQuery.of(context).size.width / 1.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(360),
            child: Image.asset(
              "assets/images/profile_def.png",
            ),
          ),
          const CustomText(
            title: "اسم المزارع",
            fontSize: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            title: "username@gmail.com",
            fontSize: 16,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_backspace_rounded,
                  )),
              const CustomText(
                title: "نبذة عني",
                fontSize: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_backspace_rounded,
                  )),
              const CustomText(
                title: "الموقع",
                fontSize: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
