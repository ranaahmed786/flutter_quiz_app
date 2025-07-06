import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget {
  final String questionNumber;
  final String questionText;
  final String yourAnswer;
  final String correctAnswer;
  final bool isCorrect;
  const QuizSummary({
    super.key,
    required this.questionNumber,
    required this.questionText,
    required this.yourAnswer,
    required this.correctAnswer,
    required this.isCorrect,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isCorrect ? Colors.green : Colors.red,
            shape: BoxShape.circle,
          ),
          child: Text(
            questionNumber,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionText,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                yourAnswer,
                textAlign: TextAlign.start,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Color.fromARGB(211, 255, 255, 255),
                ),
              ),
              Text(
                correctAnswer,
                textAlign: TextAlign.left,
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: Color.fromARGB(211, 12, 201, 116),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
