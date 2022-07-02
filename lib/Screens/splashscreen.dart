import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:funkyboys_boutique/Screens/onboarding1.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Container(
      height: Get.height,
      width: Get.width,
      child: AnimatedSplashScreen(
        splashIconSize: Get.height,
          splash: "assets/images/Animation Glitch.gif",
          duration: 4700,
          nextScreen: Onboarding1()
      ),
    );
  }
}
