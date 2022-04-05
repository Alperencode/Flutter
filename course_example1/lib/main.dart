// I'm writing this file while learning about flutter
// So the codes will be almost same as the course that I'm watching

import 'package:flutter/material.dart';

import './answers.dart';
import './questions.dart';

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

  void answeredQuestion() {
    // I added this check to prevent the crash
    if (currentQuestion == 2) {
      currentQuestion = -1;
    }
    setState(() {
        currentQuestion++;
    });
    print(currentQuestion);
  }

  // indicating the overriding the extending class
  @override
  Widget build(BuildContext context) {
    // MaterialApp returns a widget (as it should right here)
    var questions = [
      {
        'questionText': 'What\'s your favourite colour?',
        'answers': ["Black", "White", "Brown", "Yellow"]
      },
      {
        'questionText': 'What\'s your favourite pet?',
        'answers': ["Cat", "Dog", "Rabbit"]
      },
      {
        'questionText': 'Which platform do you use more?',
        'answers': ["Instagram", "Facebook", "Tiktok", "Twitch", "Youtube"]
      }
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Course-Example"),
          ),
          body: Column(
            children: [
              Question(questions[currentQuestion]['questionText'] as String),
              ...(questions[currentQuestion]['answers'] as List<String>).map((answer) {
                return Answers(answeredQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}