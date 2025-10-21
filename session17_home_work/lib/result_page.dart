import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  const ResultPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 63, 141),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 94, 146),
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Your BMI is ${bmi.toStringAsFixed(1)}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
