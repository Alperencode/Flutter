// In this file I'll write all by myself to practice what I did in course
// So I'll get used to write from scratch
import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  int currentQuestion = 0;
  void answeredQuestion() {
    if (currentQuestion < 2) {
      setState(() {
        currentQuestion++;
      });
    }

    print("Current question: ${currentQuestion+1}");
  }

  var questions = [
    "What is your favourite colour?",
    "Which platform do you use more?",
    "How old are you?"
  ];
  var answers = [
    ["Blue", "Twitter", "10-20"],
    ["Brown", "Facebook", "20-30"],
    ["Black", "Instagram", "30-40"],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Question App"),
        ),
        body: Center(
            child: Column(
              children: [
              Text(questions[currentQuestion]),
              ElevatedButton(
                  child: Text(answers[0][currentQuestion]),
                  onPressed: answeredQuestion),
              ElevatedButton(
                  child: Text(answers[1][currentQuestion]),
                  onPressed: answeredQuestion),
              ElevatedButton(
                  child: Text(answers[2][currentQuestion]),
                  onPressed: answeredQuestion)
            ])),
      ),
    );
  }
}
