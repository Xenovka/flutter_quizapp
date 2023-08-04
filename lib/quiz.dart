import 'package:flutter/material.dart';

import 'package:flutter_quizapp/questions_screen.dart';
import 'package:flutter_quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'question-screen'
    //     ? const QuestionScreen()
    //     : StartScreen(switchScreen);

    Widget screenWidget;

    if (activeScreen == 'question-screen') {
      screenWidget = const QuestionScreen();
    } else {
      screenWidget = StartScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 19, 88, 120), Colors.blueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
