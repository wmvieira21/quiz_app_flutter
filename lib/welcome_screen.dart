import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 70,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        FilledButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: switchScreen,
          label: const Text(
            'Start Quiz',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
