import 'package:flutter/material.dart';

class StartMenu extends StatefulWidget {
  const StartMenu({super.key});
  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, height: 400),
          SizedBox(height: 20),
          Text(
            'Learn Flutter the fun way',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {
              // Navigate to the quiz screen
              Navigator.pushNamed(context, '/quiz');
            },
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
