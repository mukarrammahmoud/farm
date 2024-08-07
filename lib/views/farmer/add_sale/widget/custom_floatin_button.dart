import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:farm/controller/farmer/add_sale_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/farmer/add_sale/widget/custom_container_add_project.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButtonSale extends StatelessWidget {
  const CustomFloatingActionButtonSale({
    super.key,
    required this.controller,
    required this.keyAnimation,
    required this.date,
    required this.farnmerName,
    required this.prodectDesc,
    required this.title,
  });
  final TextEditingController farnmerName;
  final String date;
  final String title;
  final TextEditingController prodectDesc;

  final AddSaleControllerImp controller;
  final GlobalKey<AnimatedFloatingActionButtonState> keyAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedFloatingActionButton(
        curve: Curves.easeInCirc,
        //Fab list
        fabButtons: <Widget>[
          const SizedBox(),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyText.withOpacity(0.4),
                  offset: const Offset(4.2, 4.2),
                  blurStyle: BlurStyle.solid,
                  spreadRadius: 0.3,
                ),
                // const BoxShadow(color: AppColors.greyText),
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: AppColors.white,
            ),
            width: 300,
            child: CustomContainerAddProdectSale(
                controller: controller,
                date: date,
                farnmerName: farnmerName,
                prodectDesc: prodectDesc,
                title: title),
          ),
        ],
        key: keyAnimation,
        colorStartAnimation: AppColors.greenText,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.add_event //To principal button
        );
  }
}
