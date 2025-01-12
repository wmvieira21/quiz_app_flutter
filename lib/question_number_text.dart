import 'package:flutter/material.dart';

class QuestionNumberText extends StatelessWidget {
  const QuestionNumberText(
      {super.key, required this.index, required this.color});

  final int index;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Text(
        (index + 1).toString(),
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
