import 'package:flutter/material.dart';
import 'gradient_container.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          startColor: Color.fromARGB(255, 6, 163, 152),
          endColor: Color.fromARGB(255, 17, 5, 238),
        ),
      ),
    );
  }
}
