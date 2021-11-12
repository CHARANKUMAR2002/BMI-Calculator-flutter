import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 500,
        splash: Image(image: AssetImage("images/transition.png"),), 
      nextScreen: BMIApp())
    );
  }
}
