import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:funkyboys_boutique/Screens/rentdetails.dart';
import 'package:funkyboys_boutique/Screens/forgotpassword.dart';
import 'package:funkyboys_boutique/Screens/homepage.dart';
import 'package:funkyboys_boutique/Screens/login.dart';
import 'package:funkyboys_boutique/Screens/profilesettings.dart';
import 'package:funkyboys_boutique/Screens/splashscreen.dart';
import 'package:funkyboys_boutique/Screens/onboarding1.dart';
import 'package:funkyboys_boutique/Screens/resetpassword.dart';
import 'package:funkyboys_boutique/Screens/signup.dart';
import 'package:funkyboys_boutique/Screens/trainingdetails.dart';
import 'package:funkyboys_boutique/Screens/videographydetails.dart';
import 'package:get/get.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: VideographyDetails()
    );
  }
}
