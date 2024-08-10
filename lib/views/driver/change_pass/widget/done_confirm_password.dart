import 'package:farm/core/constant/routs.dart';
import 'package:farm/views/driver/auth/widget/container_log.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoneConfirmPassWord extends StatelessWidget {
  const DoneConfirmPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/bigcart.png",
                height: 70,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.asset(
                      "assets/images/checked_pass.png",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "تم تأكيد كلمة المرور ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ContainerLog(
                    title: "تم",
                    onPressed: () {
                      Get.offAllNamed(AppRout.login);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
