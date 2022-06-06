import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Screens/onboarding2.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import '../Constant/Color/color.dart';


class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "assets/images/Onboarding 1.png"
              )
            )
          ),
          child:
          Padding(
            padding: EdgeInsets.only(left: H*0.022,
            top: W*1.06),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
              Text("Explore Your",
              style: TextStyle(
                fontFamily: "Gilroy-Bold",
                color: BabyPowder,
                fontSize: 50,
              ),
              ),
                Row(
              mainAxisAlignment:MainAxisAlignment.start,
              children: [
                Text("True",
                style: TextStyle(
                  fontFamily: "Gilroy-Bold",
                  color: BabyPowder,
                  fontSize: 50,
                ),),
                SizedBox(
                  width: 15,
                ),
                Text("STYLE",
                  style: TextStyle(
                    fontFamily: "Gilroy-HeavyItalic",
                    color: BabyPowder,
                    fontSize: 50,
                    decoration: TextDecoration.underline,
                  ),),
              ],
            ),
              Text("Refresh your style with on-\ntrend pieces from our\nclothing collection",
              style: TextStyle(
                fontFamily: "Gilroy-Medium",
                color: BabyPowder,
                fontSize: 26,
              ),)
              ],),
          )
        ),
      ),
    );
  }
}