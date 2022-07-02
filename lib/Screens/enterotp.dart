import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/forgotpassword.dart';
import 'package:funkyboys_boutique/Screens/resetpassword.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class EnterOTP extends StatefulWidget {
  const EnterOTP({Key? key}) : super(key: key);

  @override
  State<EnterOTP> createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: BabyPowder,
        body: SingleChildScrollView(
          child: Container(
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
                      Get.to(ForgotPassword());
                    },
                    child: Container(
                        height: H*0.05,
                        width: W*0.12,
                        child: Image.asset("assets/images/BackArrow.png")),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: H*0.015,
                      ),
                      Text("Enter OTP",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        fontFamily: "Gilroy-Black",
                        color: Colors.black.withOpacity(0.85)
                      ),),
                      SizedBox(
                        height: H*0.025,
                      ),
                      Text("An 4 digit code has been sent\nto +91 704 512 3020",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 22,
                            fontFamily: "Gilroy-Medium",
                            color: Colors.black.withOpacity(0.85)
                        ),),
                      SizedBox(
                        height: H*0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                height: H*0.15,
                                width: W*0.75,
                                decoration: BoxDecoration(
                                  color: BabyPowder,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                  ),
                                  boxShadow: [BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0,0),
                                    blurRadius: 2.5,
                                    spreadRadius: 1,
                                  )],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0,0),
                                        blurRadius: 2.5,
                                        spreadRadius: 1,
                                      )],
                                    ),
                                    width: W*0.15,
                                    child: TextFormField(
                                      onChanged: (value){
                                        if (value.length == 1){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Thin",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black.withOpacity(0.85)
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                              )
                                          ),
                                          filled: true,
                                          fillColor: Colors.white
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: W*0.025,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0,0),
                                        blurRadius: 2.5,
                                        spreadRadius: 1,
                                      )],
                                    ),
                                    width: W*0.15,
                                    child: TextFormField(
                                      onChanged: (value){
                                        if (value.length == 1){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Thin",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black.withOpacity(0.85)
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                              )
                                          ),
                                          filled: true,
                                          fillColor: Colors.white
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: W*0.025,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0,0),
                                        blurRadius: 2.5,
                                        spreadRadius: 1,
                                      )],
                                    ),
                                    width: W*0.15,
                                    child: TextFormField(
                                      onChanged: (value){
                                        if (value.length == 1){
                                          FocusScope.of(context).nextFocus();
                                        }
                                      },
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Thin",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black.withOpacity(0.85)
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                              )
                                          ),
                                          filled: true,
                                          fillColor: Colors.white
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: W*0.025,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: Offset(0,0),
                                        blurRadius: 2.5,
                                        spreadRadius: 1,
                                      )],
                                    ),
                                    width: W*0.15,
                                    child: TextFormField(
                                      style: TextStyle(
                                          fontFamily: "Gilroy-Thin",
                                          fontSize: 40,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.black.withOpacity(0.85)
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      inputFormatters: [LengthLimitingTextInputFormatter(1),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      decoration: InputDecoration(
                                          border: UnderlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)
                                              )
                                          ),
                                          filled: true,
                                          fillColor: Colors.white
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                       height: H*0.025
                      ),
                      Padding(
                        padding:EdgeInsets.only(
                          left: W*0.075
                        ),
                        child: Row(
                          children: [
                            Text("Didn't get a code?",
                            style: TextStyle(
                              fontFamily: "Gilroy-Medium",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black.withOpacity(0.85),
                            ),),
                            Text(" Click to resend",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85)
                            ),)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: H*0.035,
                      ),
                      Row(
                        children: [
                          InkWell(
                            highlightColor: Colors.transparent,
                            onTap: (){
                              Get.to(ForgotPassword());
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                left: W*0.08,
                                right: W*0.08,
                                top: H*0.01,
                                bottom: H*0.01,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(-1,1),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(H*0.02),
                                  bottomLeft: Radius.circular(H*0.02),
                                ),
                                color: BabyPowder,
                              ),
                              child: Text("Cancel",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Gilroy-Medium",
                                  color: Colors.black.withOpacity(0.85),
                                ),),
                            ),
                          ),
                          Padding(
                            padding:EdgeInsets.only(
                              left: W*0.045
                            ),
                            child: InkWell(
                              highlightColor: Colors.transparent,
                              onTap: (){
                                Get.to(ResetPassword());
                              },
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: W*0.1,
                                  right: W*0.1,
                                  top: H*0.01,
                                  bottom: H*0.01,
                                ),
                                decoration: BoxDecoration(
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
                                child: Text("Verify",
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
