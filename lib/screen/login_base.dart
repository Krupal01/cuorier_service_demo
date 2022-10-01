import 'package:carousel_slider/carousel_slider.dart';
import 'package:cuorier_service_demo/screen/admin_screen/admin_login.dart';
import 'package:cuorier_service_demo/screen/customer_care/customer_care_login.dart';
import 'package:cuorier_service_demo/screen/scanner_boy/scanner_boy_login.dart';
import 'package:flutter/material.dart';

class LoginBaseScreen extends StatelessWidget {
  static const route = "/login_base";
  LoginBaseScreen({Key? key}) : super(key: key);

  final CarouselController buttonCarouselController = CarouselController();
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
          Text(
            "Login As",
            style: Theme.of(context).textTheme.headline1,
          ),
          CarouselSlider(
            carouselController: buttonCarouselController,
            items: const [AdminLogin(), CustomerCareLogin(), ScannerBoyLogin()],
            options: CarouselOptions(
              enableInfiniteScroll: false,
              autoPlay: false,
              reverse: false,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          FloatingActionButton(
            onPressed: () => {
              buttonCarouselController.nextPage(curve: Curves.linear)
            },
            child: Icon(
              Icons.arrow_circle_right,
              color: Theme.of(context).primaryColor,
            ),
            backgroundColor: Colors.white,
          )
        ],
      ),
    );
  }
}
