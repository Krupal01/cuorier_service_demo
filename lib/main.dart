import 'package:cuorier_service_demo/screen/nav_pages.dart';
import 'package:cuorier_service_demo/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: const TextStyle(color : Colors.white,fontSize: 50.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(color : Theme.of(context).primaryColor, fontSize: 28.0, fontStyle: FontStyle.normal , ),
          bodyText1: TextStyle(color : Theme.of(context).primaryColorLight, fontSize : 20.0, ),
          bodyText2: TextStyle(color : Theme.of(context).primaryColorLight, fontSize : 14.0, ),
        ),
      ),
      initialRoute: SplashScreen.route ,
      getPages: pages,
      debugShowCheckedModeBanner: false,
    );
  }
}