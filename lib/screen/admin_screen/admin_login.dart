import 'package:cuorier_service_demo/screen/admin_screen/admin_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminLogin extends StatelessWidget {
  static const route = "/admin_login";
  const AdminLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        height: 500,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:  [
              const Text("admin login"),
              ElevatedButton(onPressed: ()=>{
                Get.offAllNamed(AdminHomeScreen.route)
              }, child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
