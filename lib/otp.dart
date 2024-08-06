import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpField extends StatelessWidget {
  const OtpField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: OtpTextField(
        numberOfFields: 4,
        fieldWidth: 50.5,
        borderWidth: 2,
        borderRadius: BorderRadius.circular(10),
        borderColor: const Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true,
        //runs when a code is typed in
        onCodeChanged: (String code) {
          //handle validation or checks here
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode) {}, // end onSubmit
      ),
      ),
    );
  }
}
