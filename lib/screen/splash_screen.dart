import 'dart:async';

import 'package:cuorier_service_demo/screen/login_base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  static const route = "/splash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), ()=>{
        Get.offNamed(LoginBaseScreen.route)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
      child: Image.asset("assets/icons/courier_at_door_100.png"),
    );
  }
}
