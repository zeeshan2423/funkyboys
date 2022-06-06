import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constant/Color/color.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
                  "assets/images/Onboarding 3.png"
                )
              )
            ),
            child:
            Padding(
              padding: EdgeInsets.only(left: H*0.022,
                  top: W*1.05),
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Dare to",
                      style: TextStyle(
                        fontFamily: "Gilroy-Bold",
                        color: BabyPowder,
                        fontSize: 50,
                      ),),
                    SizedBox(width: 7,),
                    Text("LOOK",
                      style: TextStyle(
                        fontFamily: "Gilroy-HeavyItalic",
                        color: BabyPowder,
                        fontSize: 50,
                        decoration: TextDecoration.underline,
                      ),),
                  ],
                ),
                Text("Different",
                style: TextStyle(
                  fontFamily: "Gilroy-Bold",
                  color: BabyPowder,
                  fontSize: 50,
                )
                  ,),
                Text("Fashion changes all the\ntime with all the events",
                  style: TextStyle(
                    fontFamily: "Gilroy-Medium",
                    color: BabyPowder,
                    fontSize: 26,
                  )
                  ,),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        print("Lets Explore");
                      },
                      focusColor: CornflowerBlue,
                      child: Container(
                        decoration: BoxDecoration(
                          color: BlueRYB,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 25,
                        ),
                        child: Text("Lets Explore",
                          style: TextStyle(
                            fontFamily: "Gilroy-SemiBold",
                            color: BabyPowder,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
        ),
    );
  }
}