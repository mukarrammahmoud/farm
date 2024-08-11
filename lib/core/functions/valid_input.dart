import 'package:get/get_utils/get_utils.dart';

validInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "الحقل فارغ";
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "تنسيق الاسم غير مقبول".tr;
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "تنسيق الايميل غير صحيح".tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "تنسيق الرقم غير صحيح".tr;
    }
  }
  if (type == "password") {
    if (!GetUtils.isPassport(val)) {
      return "الرجاء ادخال ارقام وحروف ".tr;
    }
  }

  if (val.length < min) {
    return "لا يمكن ان يكون المدخل اصغر من$min".tr;
  }
  if (val.length > max) {
    return "لا يمكن ان يكون المدخل اكبر من $max".tr;
  }
}
