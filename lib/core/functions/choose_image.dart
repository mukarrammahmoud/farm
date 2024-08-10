import 'dart:io';

import 'package:image_picker/image_picker.dart';

chooseImageFromCamera() async {
  XFile? xfile = await ImagePicker().pickImage(source: ImageSource.camera);
  if (xfile == null) return;
  File myFile;
  myFile = File(xfile.path);
  return myFile;
}

chooseImageFromGallery() async {
  XFile? xfile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (xfile == null) return;
  File myFile;
  myFile = File(xfile.path);
  return myFile;
}

bool isValidEmail(String email) {
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+=/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailValid;
}

