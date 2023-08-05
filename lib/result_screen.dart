import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getResult() {
    final List<Map<String, Object>> results = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      results.add({
        'qIndex': i,
        'qText': questions[i].text,
        'aCorrect': questions[i].answers[0],
        'aChosen': chosenAnswers[i],
      });
    }

    return results;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            const Text('List of answers and questions...'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
