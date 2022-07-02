import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/enterotp.dart';
import 'package:funkyboys_boutique/Screens/login.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BabyPowder,
        body: Container(
          child: Padding(
            padding:EdgeInsets.only(
              top: H*0.01
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  highlightColor: Colors.transparent,
                  onTap: (){
                    Get.to(LogIn());
                  },
                  child: Container(
                    height: H*0.05,
                    width: W*0.12,
                    child: Image.asset("assets/images/BackArrow.png"),
                  ),
                ),
                SizedBox(
                    height: H*0.25
                ),
                Padding(
                  padding:EdgeInsets.only(
                    top: H*0.01,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Forgot",
                      style: TextStyle(
                        fontFamily: "Gilroy-Black",
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.85)
                      ),),
                      Text("Password?",
                      style: TextStyle(
                        fontFamily: "Gilroy-Black",
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black.withOpacity(0.85)
                        ),
                      ),
                      SizedBox(
                        height: H*0.025,
                      ),
                      Text("Don’t worry it happens. Please enter\nthe email or mobile number\nregistered with your account.",
                        style: TextStyle(
                            fontFamily: "Gilroy-Medium",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.85)
                        ),
                      ),
                      SizedBox(
                        height: H*0.04,
                      ),
                      Container(
                        height: H*0.075,
                        width: W*0.75,
                        child: TextField(
                          cursorHeight: 16,
                          cursorColor: Colors.black.withOpacity(0.85),
                          cursorWidth: 1,
                          decoration: InputDecoration(
                            hintText: "Email/Mobile Number",
                            hintStyle: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy-Medium",
                              fontWeight: FontWeight.w300,
                              color: GraniteGray.withOpacity(0.25)
                            ),
                            fillColor: Gainsboro.withOpacity(0.25),
                            filled: true,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10)
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
                      SizedBox(
                        height: H*0.04,
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        onTap: (){
                          Get.to(EnterOTP());
                        },
                        child: Padding(
                          padding:EdgeInsets.only(
                            left: W*0.15
                          ),
                          child: Container(
                            padding: EdgeInsets.only(
                              left: W*0.15,
                              right: W*0.15,
                              top: H*0.01,
                              bottom: H*0.01,
                            ),
                            decoration:
                            BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(-1,1),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                )
                              ],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(H*0.02),
                                bottomRight: Radius.circular(H*0.02),
                              ),
                              color: BlueRYB,
                            ),
                            child: Text("Submit",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Gilroy-SemiBold",
                                color: BabyPowder,
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
