import 'package:flutter/material.dart';
import 'package:quiz_app/gradient_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Quiz app',
      home: Scaffold(
        body: GradientPage(),
      ),
    ),
  );
}
