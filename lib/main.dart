import 'package:flutter/material.dart';

import 'package:flutter_quizapp/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 19, 88, 120), Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
