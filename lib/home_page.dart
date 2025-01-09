import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 70,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        FilledButton.icon(
          icon: const Icon(Icons.arrow_right_alt),
          onPressed: () {},
          label: const Text(
            'Start Quiz',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
