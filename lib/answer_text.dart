import 'package:flutter/material.dart';

class SummaryQuestionText extends StatelessWidget {
  const SummaryQuestionText(
      {super.key, required this.text, required this.color});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 16),
      ),
    );
  }
}
