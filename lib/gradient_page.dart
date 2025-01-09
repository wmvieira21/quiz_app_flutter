import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

class GradientPage extends StatelessWidget {
  const GradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 71, 38, 128),
          const Color.fromARGB(255, 122, 70, 212),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: HomePage(),
      ),
    );
  }
}
