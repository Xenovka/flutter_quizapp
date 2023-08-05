import 'package:flutter/material.dart';
import 'package:flutter_quizapp/data/questions.dart';
import 'package:flutter_quizapp/questions_result.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

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
    final resultData = getResult();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = resultData.where((answer) {
      return answer['aCorrect'] == answer['aChosen'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionResult(resultData),
            const SizedBox(height: 30),
            TextButton.icon(
              onPressed: restartQuiz,
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.rotate_right_outlined),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
