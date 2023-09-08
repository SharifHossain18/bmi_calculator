import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/bmicalculator.dart';
import 'package:flutter_bmi_calculator/test.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BMI Calculator",
      home: BmiCalculator(),
    );
  }
}