import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_quiz_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/welcome_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  //First approach
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = WelcomeScreen(switchScreen);
  // }
  final List<String> selectedAnswer = [];
  String activeScreen = 'welcome_screen';

  void switchScreen() {
    setState(() {
      //activeScreen = QuestionsQuizScreen();
      activeScreen = 'questions_quiz_screen';
    });
  }

  void onAnswerQuestion(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results_screen';
      });
    }
  }

  void onRestartQuiz() {
    selectedAnswer.clear();
    switchScreen();
  }

  Widget getNextWidgetRendered() {
    Widget renderedScreen = WelcomeScreen(switchScreen);

    switch (activeScreen) {
      case 'welcome_screen':
        renderedScreen = WelcomeScreen(switchScreen);
        break;
      case 'questions_quiz_screen':
        renderedScreen =
            QuestionsQuizScreen(onSelectedAnswer: onAnswerQuestion);
        break;
      case 'results_screen':
        renderedScreen = ResultsScreen(
            chosenAnswers: selectedAnswer, onRestartQuiz: onRestartQuiz);
        break;
    }
    return renderedScreen;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 71, 38, 128),
              const Color.fromARGB(255, 122, 70, 212),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Center(
            child: getNextWidgetRendered(),
          ),
        ),
      ),
    );
  }
}
