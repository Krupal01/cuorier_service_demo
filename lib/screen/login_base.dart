import 'package:flutter/material.dart';

class LoginBaseScreen extends StatelessWidget {
  static const route = "/login_base";
  const LoginBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Login As", style: Theme.of(context).textTheme.headline1,),
        ],
      ),
    );
  }
}
