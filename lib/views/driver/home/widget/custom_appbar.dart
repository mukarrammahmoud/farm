import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "assets/images/bigcart.png",
        height: 20,
        width: 69,
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset("assets/image/man.png"),
      ),
    );
  }
}
