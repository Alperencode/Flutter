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
    if(currentQuestion<2){
      
      setState(() {
      currentQuestion++;
      });
      
    }
    print(currentQuestion);
  }

  // indicating the overriding the extending class
  @override
  Widget build(BuildContext context) {
    // MaterialApp returns a widget (as it should right here)
    var questions = [
      "What's your favourite colour?",
      "What's your favourite pet?",
      "Which platform do you use more?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("First-Example"),
          ),
          body: Column(
            children: [
              Question(questions[currentQuestion]),
              Answers(answeredQuestion),
              Answers(answeredQuestion),
              Answers(answeredQuestion)
            ],
          )),
    );
  }

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
