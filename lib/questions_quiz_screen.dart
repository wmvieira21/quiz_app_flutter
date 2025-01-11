import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsQuizScreen extends StatefulWidget {
  const QuestionsQuizScreen({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsQuizScreen> createState() {
    return _QuestionsQuizScreen();
  }
}

class _QuestionsQuizScreen extends State<QuestionsQuizScreen> {
  int questionIndex = 0;

  void onAnswerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return SizedBox(
      //centralizar verticalmente
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.displayLarge,
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  text: answer,
                  onTap: () {
                    onAnswerQuestion(answer);
                  });
            }),
          ],
        ),
      ),
    );
  }
}
