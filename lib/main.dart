import 'package:flutter/material.dart';
import 'Views/inputPage.dart';
import 'SplashScreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme : ThemeData.dark().copyWith(

        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21), 
      ),
      debugShowCheckedModeBanner: false,
        
      
      home: SplashScreen(),
    );
  }
}

