import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constant/Color/color.dart';

class Onboarding2 extends StatefulWidget {
  const Onboarding2({Key? key}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
        child:Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/Onboarding 2.png"
                )
              )
            ),
            child:
            Padding(
            padding: EdgeInsets.only(left: H*0.022,
            top: W*1.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get into the\nNew World of",
                style: TextStyle(
                  fontFamily: "Gilroy-Bold",
                  color: BabyPowder,
                  fontSize: 50,
                  height: 1,
                )
                  ),
                Text("CLOTHING",
                    style: TextStyle(
                      fontFamily: "Gilroy-HeavyItalic",
                      color: BabyPowder,
                      fontSize: 50,
                      decoration: TextDecoration.underline,
                      height: 1,
                    )
                ),
                Text("Dresses that meant to be\nnoticed everytime you wear",
                    style: TextStyle(
                      fontFamily: "Gilroy-Medium",
                      color: BabyPowder,
                      fontSize: 26,
                    )
                ),
              ],
            ),
          ),
        )));
  }
}
