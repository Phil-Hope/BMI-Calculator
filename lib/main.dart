import 'package:bmi/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi/input_page.dart';


void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        )
      ),
      home: InputPage(),
      routes: {
        '/results': (context) => Results(),
      },
    );
  }
}
