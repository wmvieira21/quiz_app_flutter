import 'package:flutter/material.dart';

class ResultQuestionIdentifier extends StatelessWidget {
  const ResultQuestionIdentifier(
      {super.key,
      required this.index,
      required this.userAnswer,
      required this.correctAnswer});

  final int index;
  final String userAnswer;
  final String correctAnswer;

  Color getColorCircle() {
    return userAnswer == correctAnswer
        ? Colors.blueAccent
        : Colors.purpleAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(15),
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: getColorCircle(), shape: BoxShape.circle),
      child: Text(
        (index + 1).toString(),
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
