import 'package:flutter/material.dart';
import 'package:quiz_app/models/mcq.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuizQuestions extends StatefulWidget {
  const QuizQuestions({
    super.key,
    required this.onAnswerSelected,
    required this.currentIndex,
    required this.questions,
  });
  final void Function(String) onAnswerSelected;
  final int currentIndex;
  final List<Mcq> questions;
  @override
  State<QuizQuestions> createState() => _QuizQuestionsState();
}

class _QuizQuestionsState extends State<QuizQuestions> {
  var currentIndex = 0;
  List<String> selectedAnswers = [];
  @override
  Widget build(BuildContext context) {
    var currentQuestion = widget.questions[widget.currentIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          currentQuestion.Question,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const SizedBox(height: 20),
        ...currentQuestion.shuffleOptions().map((item) {
          return AnswerButton(
            answerText: item,
            onTap: () => widget.onAnswerSelected(item),
          );
        }),
      ],
    );
  }
}
