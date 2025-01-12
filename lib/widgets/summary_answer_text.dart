import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryQuestionText extends StatelessWidget {
  const SummaryQuestionText(
      {super.key,
      required this.text,
      required this.color,
      required this.fontsize});

  final Color color;
  final String text;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        style: GoogleFonts.lato(
          color: color,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
