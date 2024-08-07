import 'package:farm/core/constant/routs.dart';
import 'package:farm/views/choose_user/choose_user.dart';
import 'package:farm/views/driver/TrackingDemand/tracking_demand.dart';
import 'package:farm/views/driver/auth/login.dart';
import 'package:farm/views/driver/change_pass/change_password.dart';
import 'package:farm/views/driver/forget_password/forget_password.dart';
import 'package:farm/views/driver/home/home_page_driver.dart';
import 'package:farm/views/driver/home/profile.dart';
import 'package:farm/views/farmer/add_prodect/add_prodect_page.dart';
import 'package:farm/views/farmer/add_sale/add_sale.dart';
import 'package:farm/views/farmer/auth/login_page.dart';
import 'package:farm/views/farmer/comments/comments.dart';
import 'package:farm/views/farmer/home/home_farmer.dart';
import 'package:farm/views/farmer/show_prodect/show_prodect.dart';
import 'package:farm/views/farmer/trucking/truking.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRout.chooseUser, page: () => const ChooseUser()),
  GetPage(name: AppRout.login, page: () => const Login()),
  GetPage(name: AppRout.homeDriver, page: () => const HomePageDriver()),
  GetPage(name: AppRout.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRout.restPassword, page: () => const ChangePassword()),
  GetPage(name: AppRout.trackingDemand, page: () => const TrackingDemand()),
  GetPage(name: AppRout.profileDriver, page: () => const ProfileDriver()),
  GetPage(name: AppRout.loginFarmer, page: () => const LoginFarmer()),
  GetPage(name: AppRout.homeFarmer, page: () => const HomeFarmer()),
  GetPage(name: AppRout.addProdectPage, page: () => const AddProdectPage()),
  GetPage(name: AppRout.addSalePage, page: () => const AddSalePage()),
  GetPage(name: AppRout.truckingDriver, page: () => const TruckingDriver()),
  GetPage(name: AppRout.comments, page: () => const Comments()),
  GetPage(name: AppRout.showProdect, page: () => const ShowProdect()),
  // GetPage(name: AppRout.truckingDriver, page: () => const TruckingDriver()),
];
