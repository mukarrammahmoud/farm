import 'package:farm/controller/farmer/comments_controller.dart';
import 'package:farm/core/constant/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardComments extends StatelessWidget {
  const CardComments({
    super.key,
    required this.controller,
    required this.index,
  });
  final CommentsControllerIpm controller;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  controller.listCommentsData[index]["imagefrut"],
                ),
                Column(
                  children: [
                    CustomText(
                      title: controller.listCommentsData[index]["nameuser"],
                      fontSize: 20,
                    ),
                    CustomText(
                      title: controller.listCommentsData[index]["date"],
                      fontSize: 14,
                    ),
                  ],
                ),
                Image.asset(
                  controller.listCommentsData[index]["imageUser"],
                ),
              ],
            ),
            const Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              RatingBar.builder(
                ignoreGestures: true,
                initialRating: controller.listCommentsData[index]["countStars"],
                minRating: 1,
                itemSize: 20.0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                // itemPadding:
                // const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  title: controller.listCommentsData[index]["description"],
                  fontSize: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
