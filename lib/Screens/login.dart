import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funkyboys_boutique/Constant/Color/color.dart';
import 'package:funkyboys_boutique/Screens/forgotpassword.dart';
import 'package:funkyboys_boutique/Screens/homepage.dart';
import 'package:funkyboys_boutique/Screens/signup.dart';
import 'package:get/get.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;


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
                  "assets/images/LogIn.jpg"
                )
              )
            ),
            child: Container(
              // color: Colors.pink,
                child: (
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 27,),
                    Text("FUNKYBOYS",
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: "Bremen Bd BT",
                      color: Colors.black.withOpacity(0.85),
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0,4.0),
                          blurRadius: 4.0,
                          color: Colors.black.withOpacity(.15)
                        )
                      ]
                    ),),
                    SizedBox(height: H*0.3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text("Log In",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: "Gilroy-Medium",
                            color: Colors.black.withOpacity(0.85),
                            fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ],
                    ),
                    SizedBox(height: H*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: H*0.07,
                          width: W*0.8 ,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if(value!.isEmpty){
                                return("Please Enter Your Email");
                              }
                              if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
                              {
                                return ("Please Enter a Valid Email");
                              }
                              return null;
                            },
                            cursorColor: GraniteGray.withOpacity(0.75),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15))
                              ),
                              // enabledBorder: OutlineInputBorder(
                              //   borderSide: BorderSide.none,
                              //   borderRadius: BorderRadius.only(
                              //     topRight: Radius.circular(15),
                              //     bottomRight: Radius.circular(15))
                              // ),
                              filled: true,
                              fillColor: Gainsboro.withOpacity(0.85),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                fontFamily: "Gilroy-Medium",
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: GraniteGray.withOpacity(0.75)
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: H*0.02,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: H*0.07,
                          width: W*0.8,
                          child: TextFormField(
                            controller: passwordController,
                            validator: (value){
                              RegExp regEx = new RegExp(r'^.{6,}$');
                              if(value!.isEmpty){
                                return ("Please Enter Your Password");
                              }
                              if (!regEx.hasMatch(value))
                                {
                                  return ("Please Enter Valid Password");
                                }
                            },
                            obscuringCharacter: "∘",
                            obscureText: true,
                            expands: false,
                            cursorColor: GraniteGray.withOpacity(0.75),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomRight: Radius.circular(15))
                                ),
                                // enabledBorder: OutlineInputBorder(
                                //     borderSide: BorderSide.none,
                                //     borderRadius: BorderRadius.only(
                                //         topRight: Radius.circular(15),
                                //         bottomRight: Radius.circular(15))
                                // ),
                                filled: true,
                                fillColor: Gainsboro.withOpacity(0.85),
                                hintText: "Password",
                                suffixIcon: Image.asset("assets/images/Eye.png",
                                scale: H*0.025,
                                color: GraniteGray.withOpacity(0.75),),
                                hintStyle: TextStyle(
                                    fontFamily: "Gilroy-Medium",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: GraniteGray.withOpacity(0.75)
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: H*0.005,),
                    InkWell(
                      onTap: (){
                        Get.to(ForgotPassword());
                      },
                      child: Text("Forgot password?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Gilroy-Medium",
                        color: BlueRYB,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    SizedBox(height: H*0.015,),
                    InkWell(
                      highlightColor: Colors.transparent,
                      onTap: (){
                        signIn(emailController.text, passwordController.text);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                        ],
                      ),
                    ),
                    SizedBox(height: H*0.025,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: W*0.75,
                            padding: EdgeInsets.only(
                              left: W*0.05,
                              right: W*0.1,
                              top: H*0.01,
                              bottom: H*0.01,
                            ),
                          decoration: BoxDecoration(
                            color: Gainsboro.withOpacity(0.85),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(H*0.015),
                              bottomRight: Radius.circular(H*0.015),
                            )
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/Google.png",
                              scale: H*0.025,),
                              Text("        Continue with Google",
                              style: TextStyle(
                                fontFamily: "Gilroy-Regular",
                                fontSize: H*0.0225,
                                color: Colors.black.withOpacity(0.85),
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: H*0.015,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: W*0.75,
                          padding: EdgeInsets.only(
                            left: W*0.05,
                            right: W*0.1,
                            top: H*0.01,
                            bottom: H*0.01,
                          ),
                          decoration: BoxDecoration(
                              color: Gainsboro.withOpacity(0.85),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(H*0.015),
                                bottomRight: Radius.circular(H*0.015),
                              )
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/images/Facebook.png",
                              scale: H*0.025,),
                              Text("      Continue with Facebook",
                                style: TextStyle(
                                  fontFamily: "Gilroy-Regular",
                                  fontSize: H*0.0225,
                                  color: Colors.black.withOpacity(0.85),
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: H*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Gilroy-Regular",
                              color: Colors.black.withOpacity(0.85)
                          ),),
                        InkWell(
                          highlightColor: Colors.transparent,
                          onTap: (){
                            Get.to(SignUp());
                          },
                          child: Text(" Sign Up",
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: "Gilroy-Medium",
                                fontWeight: FontWeight.w300,
                                color: BlueRYB
                            ),),
                        ),
                      ],
                    )
                    ],
                )
                ),
            ),
          ),
        ),
      ),
    );
  }
  void signIn(String email, String password) async
  {
    if(_formKey.currentState!.validate())

    {
      await _auth.signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
        Fluttertoast.showToast(msg: "LogIn Successful "),
        Get.to(HomePage())
      }).catchError((e){
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}

