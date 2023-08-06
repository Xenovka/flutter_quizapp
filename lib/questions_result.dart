import 'package:flutter/material.dart';
import 'package:flutter_quizapp/answer_indicator.dart';
import 'package:flutter_quizapp/questions_answer.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(this.results, {super.key});

  final List<Map<String, Object>> results;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: results.map((result) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnswerIndicator(result: result),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        result['qText'] as String,
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      QuestionsAnswer(
                          text: result['aChosen'] as String,
                          color: Colors.white),
                      QuestionsAnswer(
                          text: result['aCorrect'] as String,
                          color: Colors.greenAccent),
                      const SizedBox(height: 10)
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
