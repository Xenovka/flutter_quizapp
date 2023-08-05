import 'package:flutter/material.dart';
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
                Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Text(
                    ((result['qIndex'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
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
                      Text(
                        result['aCorrect'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        result['aChosen'] as String,
                        style: GoogleFonts.lato(
                          color: Colors.greenAccent,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
