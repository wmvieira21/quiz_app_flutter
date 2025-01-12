import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/summary_answer_text.dart';
import 'package:quiz_app/widgets/result_question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              //can be broken in one widget
              spacing: 10,
              children: [
                ResultQuestionIdentifier(
                    correctAnswer: data['corretAnswer'].toString(),
                    userAnswer: data['userAnswer'].toString(),
                    index: (data['question_index'] as int)),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      SummaryQuestionText(
                          text: data['question'].toString(),
                          color: Colors.white,
                          fontsize: 18),
                      SummaryQuestionText(
                          text: data['userAnswer'].toString(),
                          color: Colors.purpleAccent,
                          fontsize: 16),
                      SummaryQuestionText(
                          text: data['corretAnswer'].toString(),
                          color: Colors.blueAccent,
                          fontsize: 16),
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
