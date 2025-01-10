import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsQuizScreen extends StatefulWidget {
  const QuestionsQuizScreen({super.key});

  @override
  State<QuestionsQuizScreen> createState() {
    return _QuestionsQuizScreen();
  }
}

void nextQuestion() {}

class _QuestionsQuizScreen extends State<QuestionsQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //centralizar verticalmente
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'question...',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 30),
          AnswerButton(text: 'text', answer: nextQuestion),
          AnswerButton(text: 'text', answer: nextQuestion),
          AnswerButton(text: 'text', answer: nextQuestion),
          AnswerButton(text: 'text', answer: nextQuestion),
        ],
      ),
    );
  }
}
