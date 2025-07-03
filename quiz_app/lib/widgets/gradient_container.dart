import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/start_menu.dart';

class GradientContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  const GradientContainer({
    super.key,
    required this.startColor,
    required this.endColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [startColor, endColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: StartMenu(),
    );
  }
}
