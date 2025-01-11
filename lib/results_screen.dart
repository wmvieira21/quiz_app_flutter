import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.onRestartQuiz, required this.chosenAnswers});

  final List<String> chosenAnswers;
  final void Function() onRestartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    chosenAnswers.asMap().forEach((index, userAnswer) {
      summary.add({
        'question_index': index,
        'question': questions[index].text,
        'userAnswer': userAnswer,
        'corretAnswer': questions[index].answers[0]
      });
    });
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    getSummaryData();
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(30),
      child: Column(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answerd X out of Y questions corrently!',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headlineLarge,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const Text('List of answers and questions'),
          FilledButton.icon(
            icon: const Icon(Icons.restart_alt_sharp),
            onPressed: onRestartQuiz,
            label: Text(
              'Restart quiz',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}