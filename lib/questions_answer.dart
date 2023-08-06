import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsAnswer extends StatelessWidget {
  const QuestionsAnswer({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        fontSize: 16,
      ),
    );
  }
}
