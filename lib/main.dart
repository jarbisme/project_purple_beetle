import 'package:flutter/material.dart';
import 'package:project_purple_beetle/screens/calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'SF-Pro-Rounded',
      ),
      home: CalculatorScreen(),
    );
  }
}
