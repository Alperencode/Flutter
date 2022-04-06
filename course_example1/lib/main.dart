// I'm writing this file while learning about flutter
// So the codes will be almost same as the course that I'm watching

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  // runApp is a function provided by material.dart
  // It's calling the build method from the class
  // and renders the widget
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int currentQuestion = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      currentQuestion = 0;
      totalScore = 0;
    });
  }

  void answeredQuestion(int score) {
    totalScore += score;

    setState(() {
      currentQuestion++;
    });
    // print(currentQuestion);
  }

  static const questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': "Black", 'score': 10},
        {'text': "Brown", 'score': 8},
        {'text': "Orange", 'score': 5},
        {'text': "Yellow", 'score': 3},
        {'text': "White", 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favourite pet?',
      'answers': [
        {'text': "Dog", 'score': 5},
        {'text': "Cat", 'score': 3},
        {'text': "Rabbit", 'score': 0},
      ]
    },
    {
      'questionText': 'Which platform do you use more?',
      'answers': [
        {'text': "Tiktok", 'score': 10},
        {'text': "Twitch", 'score': 8},
        {'text': "Instagram", 'score': 5},
        {'text': "Facebook", 'score': 3},
        {'text': "Youtube", 'score': 0},
      ]
    }
  ];

  // indicating the overriding the extending class
  @override
  Widget build(BuildContext context) {
    // MaterialApp returns a widget (as it should right here)
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Course-Example"),
          ),
          body: currentQuestion < questions.length
              ? Quiz(answeredQuestion, questions, currentQuestion)
              : Result(totalScore, resetQuiz)),
    );
  }
}
