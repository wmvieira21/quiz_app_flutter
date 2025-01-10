import 'package:quiz_app/models/question_quiz.dart';

const questions = [
  QuizQuestion("What are the main building blocks of Flutter UIs?",
      ['Widgets', 'Components', 'Blocks', 'Functions']),
  QuizQuestion(
      "Which of the following is the primary programming language for Flutter?",
      ['Dart', 'Java', 'Kotlin', 'Swift']),
  QuizQuestion("Which widget is used to display text in Flutter?",
      ['Text', 'Label', 'Paragraph', 'Message']),
  QuizQuestion(
      "Which layout widget in Flutter arranges its children in a column?",
      ['Column', 'Row', 'Stack', 'Grid']),
  QuizQuestion("What is the purpose of the 'StatefulWidget' in Flutter?", [
    'To hold mutable state',
    'To display static content',
    'To manage routes',
    'To manage database connections'
  ]),
  QuizQuestion(
      "Which of these is used to manage state across multiple widgets in Flutter?",
      ['Provider', 'GlobalKey', 'StatefulWidget', 'InheritedWidget']),
  QuizQuestion(
      "What does the 'pubspec.yaml' file in a Flutter project manage?", [
    'Dependencies and configurations',
    'UI structure',
    'Routing',
    'App logic'
  ]),
  QuizQuestion(
      "What is the main difference between a 'StatelessWidget' and a 'StatefulWidget' in Flutter?",
      [
        'StatelessWidget cannot change its state, StatefulWidget can',
        'StatelessWidget has no UI',
        'StatefulWidget uses less memory',
        'StatefulWidget is not used in Flutter'
      ]),
  QuizQuestion("Which widget is used to display an image in Flutter?",
      ['Image', 'Picture', 'AssetImage', 'Icon']),
  QuizQuestion("What is the purpose of the 'setState()' function in Flutter?", [
    'To update the UI after a change in state',
    'To trigger an event',
    'To initialize state',
    'To handle user input'
  ]),
];
