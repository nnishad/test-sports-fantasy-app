import 'package:flutter/material.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDForgotPwdScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDHomePageScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDLoginScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDRegisterScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDSplashScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDVerificationScreen.dart';
import 'package:test_login_flutter/smartDeck/Screens/SDWalkThroughScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SDSplashScreen.id,
      routes: {
        SDWalkThroughScreen.id: (context) => SDWalkThroughScreen(),
        SDLoginScreen.id: (context) => SDLoginScreen(),
        SDForgotPwdScreen.id: (context) => SDForgotPwdScreen(),
        sdRegisterScreen.id: (context) => sdRegisterScreen(),
        SDHomePageScreen.id: (context) => SDHomePageScreen(),
        SDVerficationScreen.id: (context) => SDVerficationScreen(),
        SDSplashScreen.id: (context) => SDSplashScreen(),
      },
    );
  }
}
