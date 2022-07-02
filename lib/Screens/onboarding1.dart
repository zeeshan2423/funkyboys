import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Screens/login.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Constant/Color/color.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({Key? key}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
                controller: _controller,
                children: [
                  Container(
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
                            top: W*0.9),
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
                  Container(
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
                          top: W*0.9),
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
                  ),
                  Container(
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
                            top: W*0.9),
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
                                    Get.to(LogIn());
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
                ]
            ),
            Container(
              alignment: Alignment(0,H*0.0012),
              child: SmoothPageIndicator(controller: _controller, count: 3, effect: ExpandingDotsEffect(
                dotColor: Gainsboro.withOpacity(0.5),
                activeDotColor: BabyPowder,
                radius: 10,
                dotHeight: 10,
                dotWidth: 10
              ),),
            )
          ],
        )
      ),
    );
  }
}