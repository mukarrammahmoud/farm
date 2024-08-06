// import 'package:farm/controller/farmer/add_prodect_controller.dart';
// import 'package:farm/core/constant/colors.dart';
// import 'package:floating_action_bubble/floating_action_bubble.dart';
// import 'package:flutter/material.dart';

// class CustomFloatingActionButton extends StatefulWidget {
//   const CustomFloatingActionButton({
//     super.key,
//     required this.controller,
//   });
//   final AddprodectControllerImp controller;

//   @override
//   State<CustomFloatingActionButton> createState() =>
//       _CustomFloatingActionButtonState();
// }

// class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton>
//     with SingleTickerProviderStateMixin {
//   late Animation<double> _animation;
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 260),
//     );

//     final curvedAnimation =
//         CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
//     _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionBubble(
//         backGroundColor: AppColors.buttonColor,
//         // Menu items
//         iconColor: AppColors.black,
//         animation: _animation,
//         onPress: () {},
//         items: <Bubble>[
//           // Floating action menu item
//           Bubble(
//             title: "Settings",
//             iconColor: Colors.white,
//             bubbleColor: Colors.blue,
//             icon: Icons.settings,
//             titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
//             onPress: () {
//               // _animationController.reverse();
//             },
//           ),
//           // Floating action menu item
//           Bubble(
//             title: "Profile",
//             iconColor: Colors.white,
//             bubbleColor: Colors.blue,
//             icon: Icons.people,
//             titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
//             onPress: () {
//               _animationController.reverse();
//             },
//           ),
//         ]);

//     // FloatingActionButton(
//     //   backgroundColor: AppColors.greenText,
//     //   child: const Icon(Icons.add_circle_outline),
//     //   onPressed: () {},
//     // );
//   }
// }

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  const CustomFloatingActionButton({super.key});

  @override
  _CustomFloatingActionButtonState createState() =>
      _CustomFloatingActionButtonState();
}

class _CustomFloatingActionButtonState extends State<CustomFloatingActionButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

        //Init Floating Action Bubble
        floatingActionButton: FloatingActionBubble(
          // Menu items
          items: <Bubble>[
            // Floating action menu item
            Bubble(
              title: "Settings",
              iconColor: Colors.white,
              bubbleColor: Colors.blue,
              icon: Icons.settings,
              titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                _animationController.reverse();
              },
            ),
            // Floating action menu item
            Bubble(
              title: "Profile",
              iconColor: Colors.white,
              bubbleColor: Colors.blue,
              icon: Icons.people,
              titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                _animationController.reverse();
              },
            ),
            //Floating action menu item
            Bubble(
              title: "Home",
              iconColor: Colors.white,
              bubbleColor: Colors.blue,
              icon: Icons.home,
              titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                // Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context) => Homepage()));
                // _animationController.reverse();
              },
            ),
          ],

          // animation controller
          animation: _animation,

          // On pressed change animation state
          onPress: () => _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward(),

          // Floating Action button Icon color
          iconColor: Colors.blue,

          // Flaoting Action button Icon
          iconData: Icons.ac_unit,
          backGroundColor: Colors.white,
        ));
  }
}
