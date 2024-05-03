import 'package:flutter/material.dart';
import 'package:lesson_28/screens/on_boarding.dart';

void main(List<String> args) {
  runApp(const Homework());
}

class Homework extends StatelessWidget {
  const Homework({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: OnBoardingScreen()),
    );
  }
}
