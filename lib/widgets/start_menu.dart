import 'package:flutter/material.dart';

class StartMenu extends StatelessWidget {
  const StartMenu(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 400,
            color: Color.fromARGB(214, 255, 255, 255),
          ),
          SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
                side: BorderSide(color: Colors.white, width: 2),
              ),
            ),
            icon: Icon(Icons.arrow_right_alt, size: 24),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
