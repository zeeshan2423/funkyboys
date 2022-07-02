import 'package:flutter/services.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/login.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value1 = false;
  bool value2 = false;
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController confirmPasswordEditingController = TextEditingController();
  TextEditingController mobileNumberEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: 
        SingleChildScrollView(
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(
                        "assets/images/Sign Up.png"
                    ),
                    opacity: 0.25
                )
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.only(
                      top: H*0.01
                    ),
                    child: InkWell(
                      highlightColor: Colors.transparent,
                      onTap: (){
                        Get.to(LogIn());
                      },
                      child: Container(
                          height: H*0.05,
                          width: W*0.12,
                          child: Image.asset("assets/images/BackArrow.png")),
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(
                      top: H*0.01
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sign Up",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Gilroy-Black",
                          color: Colors.black.withOpacity(0.85),
                        ),),
                        Text("Create an Account",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Gilroy-Medium",
                            color: Colors.black.withOpacity(0.85),
                          ),),
                        SizedBox(
                          height: H*0.02,
                        ),
                        Row(
                          children: [
                            Text("First Name",
                            style: TextStyle(
                              fontFamily: "Gilroy-Regular",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black
                            ),),
                            SizedBox(
                              width: W*0.19,
                            ),
                            Text("Last Name",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black
                            ),),
                          ],
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: H*0.05,
                              width: W*0.38,
                              child: TextField(
                                cursorColor: Colors.black.withOpacity(0.85),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Gainsboro.withOpacity(0.4),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                      )
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gilroy-Regular",
                                  color: Colors.black.withOpacity(0.85),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: W*0.03
                            ),
                            Container(
                              height: H*0.05,
                              width: W*0.35,
                              child: TextField(
                                cursorColor: Colors.black.withOpacity(0.85),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Gainsboro.withOpacity(0.4),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)
                                      )
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gilroy-Regular",
                                  color: Colors.black.withOpacity(0.85),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Text("Email ID",
                        style: TextStyle(
                          fontFamily: "Gilroy-Regular",
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.85),
                        ),),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Container(
                          width: W*0.76,
                          height: H*0.05,
                          child: TextField(
                            cursorColor: Colors.black.withOpacity(0.85),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Gainsboro.withOpacity(0.4),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10)
                                )
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Text("Password",
                        style: TextStyle(
                          fontFamily: "Gilroy-Regular",
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.85)
                        ),),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Container(
                          height: H*0.05,
                          width: W*0.76,
                          child: TextField(
                            cursorColor: Colors.black.withOpacity(0.85),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Gainsboro.withOpacity(0.4),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)
                                  )
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Text("Confirm Password",
                          style: TextStyle(
                              fontFamily: "Gilroy-Regular",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black.withOpacity(0.85)
                          ),),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Container(
                          height: H*0.05,
                          width: W*0.76,
                          child: TextField(
                            cursorColor: Colors.black.withOpacity(0.85),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Gainsboro.withOpacity(0.4),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)
                                  )
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Text("Mobile Number",
                          style: TextStyle(
                              fontFamily: "Gilroy-Regular",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Colors.black.withOpacity(0.85)
                          ),),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Container(
                          height: H*0.05,
                          width: W*0.76,
                          child: TextField(
                            cursorColor: Colors.black.withOpacity(0.85),
                            keyboardType: TextInputType.number,
                            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Gainsboro.withOpacity(0.4),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10)
                                  )
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: H*0.01,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("By registering, you are agree with",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy-Regular",
                              fontWeight: FontWeight.w300,
                              color: Colors.black.withOpacity(0.85)
                            ),),
                            Padding(
                              padding:EdgeInsets.only(
                                top: H*0.025
                              ),
                              child: Container(
                                height: H*0.01,
                                width: W*0.35,
                                child: Switch.adaptive(
                                  activeColor: BlueRYB,
                                  activeTrackColor: BlueRYB.withOpacity(0.25),
                                  value: value1,
                                  onChanged: (bool? value){
                                    setState((){
                                      this.value1 = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("our ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Gilroy-Regular",
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.85),
                                )),
                            Text("Terms, Privacy, Policy.",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontFamily: "Gilroy-Regular",
                              fontSize: 14,
                              color: BlueRYB,
                            )),
                          ],
                        ),
                        SizedBox(
                          height: H*0.02,
                        ),
                        Row(
                          children: [
                            Text("Sign up for early sale access plus\ntailored new arrivals and promotions.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Gilroy-Regular",
                                  fontSize: 14,
                                  color: Colors.black.withOpacity(0.85),
                                )),
                            Container(
                              height: H*0.01,
                              width: W*0.23,
                              child: Switch.adaptive(
                                activeColor: BlueRYB,
                                activeTrackColor: BlueRYB.withOpacity(0.25),
                                value: value2,
                                onChanged: (bool? value){
                                  setState((){
                                    this.value2 = value!;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: H*0.03,
                        ),
                        InkWell(
                          onTap: (){},
                          child: Padding(
                            padding:EdgeInsets.only(
                              left: W*0.1
                            ),
                            child: Container(
                              padding: EdgeInsets.only(
                                left: W*0.20,
                                right: W*0.20,
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
                              child: Text("Sign Up",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Gilroy-SemiBold",
                                  color: BabyPowder,
                                ),),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: H*0.025,
                        ),
                        Padding(
                          padding:EdgeInsets.only(
                            left: W*0.09
                          ),
                          child: Row(
                            children: [
                              Text("Aleady have an account?",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Gilroy-Regular",
                                fontWeight: FontWeight.w300,
                                color: Colors.black.withOpacity(0.85),
                              ),),
                              InkWell(
                                onTap: (){
                                  Get.to(LogIn());
                                },
                                child: Text(" Sign In",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Gilroy-Regular",
                                  fontSize: 16,
                                  color: BlueRYB
                                ),),
                              )
                            ],
                          ),
                        )
                      ],
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
