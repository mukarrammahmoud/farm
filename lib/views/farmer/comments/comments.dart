import 'package:farm/controller/farmer/comments_controller.dart';
import 'package:farm/core/constant/colors.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:farm/views/farmer/comments/widgets/card_comments.dart';
import 'package:farm/views/farmer/home/widgets/custom_drower.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CommentsControllerIpm());
    return GetBuilder<CommentsControllerIpm>(builder: (controller) {
      return Scaffold(
          backgroundColor: const Color(0xffF5F5F5),
          endDrawer: const CustomDrawer(),
          appBar: AppBar(
            foregroundColor: AppColors.greenText,
            centerTitle: true,
            title: CustomText(
              title: controller.title,
              fontSize: 16,
            ),
          ),
          body: ListView.builder(
            itemCount: controller.listCommentsData.length,
            itemBuilder: (context, index) =>
                CardComments(controller: controller, index: index),
          ));
    });
  }
}
