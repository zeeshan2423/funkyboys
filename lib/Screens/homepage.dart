import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BabyPowder,
        bottomNavigationBar: CurvedNavigationBar(
          height: H*0.08,
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 300),
          items: [
            Image.asset("assets/images/Home.png",
            height: H*0.035,),
            Image.asset("assets/images/Heart.png",
              height: H*0.035,),
            Image.asset("assets/images/Buy.png",
              height: H*0.035,),
            Image.asset("assets/images/Profile.png",
              height: H*0.035,)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding:EdgeInsets.only(
                    left: W*0.05,
                    top: H*0.015,
                    right: W*0.05
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Hamburger.png",
                          height: H*0.03,),
                        Text("FUNKYBOYS",
                        style: TextStyle(
                          fontFamily: "Bremen Bd BT",
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.black.withOpacity(0.85)
                        ),),
                          Image.asset("assets/images/Settings.png",
                          height: H*0.04,)
                        ],
                      ),
                      SizedBox(
                        height: H*0.025,
                      ),
                      Padding(
                        padding:EdgeInsets.only(
                          left: W*0.075,
                          right: W*0.075,
                        ),
                        child: Container(
                          height: H*0.065,
                          child: TextField(
                            cursorHeight: 18,
                            cursorColor: Colors.black.withOpacity(0.85),
                            cursorWidth: 1,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding:EdgeInsets.all(12.5),
                                child: Image.asset("assets/images/Search.png",
                                width: W*0.01,),
                              ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Gilroy-Medium",
                                    fontWeight: FontWeight.w300,
                                    color: GraniteGray.withOpacity(0.15)
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                    )
                                )
                            ),
                            style: TextStyle(
                                fontFamily: "Gilroy-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.black.withOpacity(0.85)
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
