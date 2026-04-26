import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        primaryColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
      routes: {
        '/resultPage':(context) => ResultsPage(imcResult: '', text: '', interpretation: '',),
        '/inputPage' : (context) => InputPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}


