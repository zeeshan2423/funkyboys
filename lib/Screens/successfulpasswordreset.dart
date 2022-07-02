import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SuccessfulPasswordReset extends StatefulWidget {
  const SuccessfulPasswordReset({Key? key}) : super(key: key);

  @override
  State<SuccessfulPasswordReset> createState() => _SuccessfulPasswordResetState();
}

class _SuccessfulPasswordResetState extends State<SuccessfulPasswordReset> {
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
              left: W*0.075,
              top: H*0.025
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Successful",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: "Gilroy-Black",
                      color: Colors.black.withOpacity(0.85)
                  ),),
                Text("Password Reset!",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      fontFamily: "Gilroy-Black",
                      color: Colors.black.withOpacity(0.85)
                  ),),
                SizedBox(
                  height: H*0.025
                ),
                Text("You can now use your new password\nto log in to your account",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      fontFamily: "Gilroy-Black",
                      color: Colors.black.withOpacity(0.85)
                  ),),
                SizedBox(
                  height: H*0.025,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  onTap: (){
                    Get.to(LogIn());
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
                      child: Text("Login",
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
    );
  }
}
