import 'package:flutter/material.dart';
import 'package:quiz_app/questions_quiz_screen.dart';
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

  String activeScreen = 'welcome_screen';

  void switchScreen() {
    setState(() {
      //activeScreen = QuestionsQuizScreen();
      activeScreen = 'Questions_Quiz_Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    final renderedScreen = (activeScreen == 'welcome_screen'
        ? WelcomeScreen(switchScreen)
        : const QuestionsQuizScreen());

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
            child: renderedScreen,
          ),
        ),
      ),
    );
  }
}
