import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/views/farmer/add_prodect/widgets/custom_container_add_project.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedFloatingActionButtonState> key =
        GlobalKey<AnimatedFloatingActionButtonState>();

    return AnimatedFloatingActionButton(
        curve: Curves.easeInCirc,
        //Fab list
        fabButtons: <Widget>[
          const SizedBox(),
          SizedBox(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const SizedBox(),
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: Container(
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
                    child: const CustomContainerAddProdect(),
                  ),
                ),
              ],
            ),
          ),
        ],
        key: key,
        colorStartAnimation: AppColors.greenText,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.add_event //To principal button
        );
  }
}
