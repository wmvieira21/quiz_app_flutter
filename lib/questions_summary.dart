import 'package:flutter/material.dart';
import 'package:quiz_app/answer_text.dart';
import 'package:quiz_app/question_number_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              spacing: 10,
              children: [
                QuestionNumberText(
                    index: (data['question_index'] as int),
                    color: (data['userAnswer'] == data['corretAnswer']
                        ? Colors.blueAccent
                        : Colors.purpleAccent)),
                Expanded(
                  child: Column(
                    children: [
                      SummaryQuestionText(
                          text: data['question'].toString(),
                          color: Colors.white),
                      SummaryQuestionText(
                          text: data['userAnswer'].toString(),
                          color: Colors.purpleAccent),
                      SummaryQuestionText(
                          text: data['corretAnswer'].toString(),
                          color: Colors.blueAccent),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
