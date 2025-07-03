import 'package:flutter/material.dart';
import 'widgets/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          startColor: Color.fromARGB(255, 6, 163, 152),
          endColor: Color.fromARGB(255, 17, 5, 238),
        ),
      ),
    ),
  );
}
