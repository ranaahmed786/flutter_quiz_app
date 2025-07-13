import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/models/mcq.dart';
import 'package:flutter_quiz_app/widgets/quiz_summary.dart';

class QuizEndScreen extends StatelessWidget {
  final List<String> selectedAnswers;
  final List<Mcq> questions;
  final Map<int, bool> isCorrectAnswers = {};
  final int totalQuestions = Questions.length;
  final void Function()? onRetry;
  int numOfRightAnswers = 0;
  QuizEndScreen({
    super.key,
    this.selectedAnswers = const [],
    this.questions = const [],
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < selectedAnswers.length; i++) {
      isCorrectAnswers[i] =
          selectedAnswers[i] == questions[i].Options[0].toString();
      if (isCorrectAnswers[i] == true) {
        numOfRightAnswers++;
      }
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered $numOfRightAnswers out of $totalQuestions correctly!',
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 450,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < selectedAnswers.length; i++)
                    QuizSummary(
                      questionNumber: '${i + 1}',
                      questionText: questions[i].Question,
                      yourAnswer: selectedAnswers[i],
                      correctAnswer: questions[i].Options[0].toString(),
                      isCorrect: isCorrectAnswers[i] ?? false,
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          TextButton.icon(
            onPressed: onRetry,
            icon: Icon(
              Icons.refresh,
              size: 24,
              color: const Color.fromARGB(205, 255, 255, 255),
            ),
            label: Text(
              'Retry',
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(205, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
