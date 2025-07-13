import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/widgets/quiz_questions.dart';
import 'package:flutter_quiz_app/widgets/start_menu.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/widgets/quizend_screen.dart';

class GradientContainer extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final int numOfRightAnswers;
  final int totalQuestions;
  const GradientContainer({
    super.key,
    required this.startColor,
    required this.endColor,
    this.numOfRightAnswers = 0,
    this.totalQuestions = 0,
  });

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  var currentScreen = 'start';
  int currentIndex = 0;
  final List<String> selectedAnswers = [];
  void startQuiz() {
    setState(() {
      currentScreen = 'quiz';
    });
  }

  void endQuiz() {
    setState(() {
      currentScreen = 'end';
    });
  }

  void resetQuiz() {
    setState(() {
      currentScreen = 'start';
      currentIndex = 0;
      selectedAnswers.clear();
    });
  }

  void onSelectAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == Questions.length) {
      endQuiz();
    } else if (currentIndex == Questions.length - 1) {
      endQuiz();
    } else {
      setState(() {
        currentIndex++;
      });
    }
  }

  Widget newChild() {
    if (currentScreen == 'end') {
      return QuizEndScreen(
        selectedAnswers: selectedAnswers,
        questions: Questions,
        onRetry: resetQuiz,
      );
    } else if (currentScreen == 'quiz') {
      return QuizQuestions(
        onAnswerSelected: onSelectAnswer,
        currentIndex: currentIndex,
        questions: Questions,
      );
    } else {
      return StartMenu(startQuiz);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.startColor, widget.endColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: newChild(),
    );
  }
}
