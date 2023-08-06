import 'package:flutter/material.dart';

class AnswerIndicator extends StatelessWidget {
  const AnswerIndicator({super.key, required this.result});

  final Map<String, Object> result;
  bool get isCorrect => result['aCorrect'] == result['aChosen'];

  @override
  Widget build(context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 53, 180, 57)
            : const Color.fromARGB(255, 247, 26, 10),
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Text(
        ((result['qIndex'] as int) + 1).toString(),
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
