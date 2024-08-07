import 'package:get/get.dart';

abstract class CommentsController extends GetxController {}

class CommentsControllerIpm extends CommentsController {
  final String title = "التعليقات";
  List listCommentsData = [
    {
      "imageUser": "assets/images/user.png",
      "nameuser": "ساره السروري",
      "date": "32 minutes ago",
      "imagefrut": "assets/images/apple.png",
      "countStars": 2.5,
      "description": "لقد اعجبتني الفاكه",
    },
    {
      "imageUser": "assets/images/Ellipse.png",
      "nameuser": "شيماء جميل",
      "date": "32 minutes ago",
      "imagefrut": "assets/images/frut.png",
      "countStars": 4.1,
      "description": "لقد اعجبتني الفاكه",
    },
    {
      "imageUser": "assets/images/user2.png",
      "nameuser": "احمد عبدالله",
      "date": "32 minutes ago",
      "imagefrut": "assets/images/frut.png",
      "countStars": 5.0,
      "description": "لقد اعجبتني الفاكه",
    },
  ];
}
