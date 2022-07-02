import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/successfulpasswordreset.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool value1 = false;

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
                left: W*0.075,
                top: H*0.025
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Reset",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    fontFamily: "Gilroy-Black",
                    color: Colors.black.withOpacity(0.85)
                  ),),
                  Text("Password",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40,
                        fontFamily: "Gilroy-Black",
                        color: Colors.black.withOpacity(0.85)
                    ),),
                  SizedBox(
                    height: H*0.025,
                  ),
                  Text("Your new password must be different\nfrom your previously used passwords\nand 8 characters including special\ncharacter and number",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        fontFamily: "Gilroy-Medium",
                        color: Colors.black.withOpacity(0.85)
                    ),),
                  SizedBox(
                    height: H*0.025,
                  ),
                  Padding(
                    padding:EdgeInsets.only(
                      left: W*0.05
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: H*0.075,
                          width: W*0.75,
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: "∘",
                            cursorHeight: 18,
                            cursorColor: Colors.black.withOpacity(0.85),
                            cursorWidth: 1,
                            decoration: InputDecoration(
                                hintText: "New Password",
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
                          height: H*0.01,
                        ),
                        Container(
                          height: H*0.075,
                          width: W*0.75,
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: "∘",
                            cursorHeight: 18,
                            cursorColor: Colors.black.withOpacity(0.85),
                            cursorWidth: 1,
                            decoration: InputDecoration(
                                hintText: "Confirm New Password",
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
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(
                          left: W*0.02
                        ),
                        child: Checkbox(
                            splashRadius: 0,
                            side: BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.black.withOpacity(0.85),
                                width: 1.5
                            ),
                            checkColor: BabyPowder,
                            activeColor: BlueRYB,
                            value: this.value1,
                            onChanged: (bool? value){
                              setState((){
                                this.value1 = value!;
                              });
                            }),
                        
                      ),
                      Text("Show Password",
                      style: TextStyle(
                        fontFamily: "Gilroy-Regular",
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.black.withOpacity(0.85)
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: H*0.025,
                  ),
                  InkWell(
                    highlightColor: Colors.transparent,
                    onTap: (){
                      Get.to(SuccessfulPasswordReset());
                    },
                    child: Padding(
                      padding:EdgeInsets.only(
                          left: W*0.2
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: W*0.15,
                          right: W*0.15,
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
          ),
        ),
      ),
    );
  }
}
