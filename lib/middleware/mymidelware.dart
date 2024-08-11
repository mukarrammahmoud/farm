import 'package:farm/core/constant/routs.dart';
import 'package:farm/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//صفحة اضهار الاون بوردينق لاول مره للمستخدم
class MymiDllWare extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("login") == "done" &&
        myServices.sharedPreferences.getString("type") == "farmer") {
      return const RouteSettings(name: AppRout.homeFarmer);
    }
    if (myServices.sharedPreferences.getString("login") == "done" &&
        myServices.sharedPreferences.getString("type") == "driver") {
      return const RouteSettings(name: AppRout.homeDriver);
    }
  
    return null;
  }
}
