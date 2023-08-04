import 'package:flutter/material.dart';
import 'package:flutter_quizapp/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hehe',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1',
            onPressed: () {},
          ),
          AnswerButton(
            answerText: 'Answer 2',
            onPressed: () {},
          ),
          AnswerButton(
            answerText: 'Answer 4',
            onPressed: () {},
          ),
          AnswerButton(
            answerText: 'Answer 4',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
