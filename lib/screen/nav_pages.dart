import 'package:cuorier_service_demo/screen/admin_screen/admin_home_screen.dart';
import 'package:cuorier_service_demo/screen/login_base.dart';
import 'package:cuorier_service_demo/screen/splash_screen.dart';
import 'package:get/get.dart';

var pages = [
  GetPage(name: SplashScreen.route, page: () => const SplashScreen()),
  GetPage(name: LoginBaseScreen.route, page: ()=> LoginBaseScreen()),
  GetPage(name: AdminHomeScreen.route, page: ()=>const AdminHomeScreen())
];
