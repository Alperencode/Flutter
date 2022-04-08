// In this file I'll write all by myself to practice what I did in course
// So I'll get used to write from scratch
import 'package:flutter/material.dart';

import 'answer.dart';
import './question.dart';
import './result.dart';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myAppState();
  }
}

class myAppState extends State<myApp> {
  int currentQuestion = 0;
  int totalScore = 0;

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      currentQuestion = 0;
    });
  }

  void answeredQuestion(int score) {
    totalScore += score;
    setState(() {
      currentQuestion++;
    });
    debugPrint("Current Question: ${currentQuestion.toString()}");
    debugPrint("Current total score: ${totalScore.toString()}");
  }

  var questions = [
    "What is your favourite colour?",
    "Which platform do you use more?",
    "How do you describe yourself?",
    "What's your favourite pet?",
  ];
  List<dynamic> answers = [
    [
      ["Blue", 3],
      ["Brown", 0],
      ["Green", 5],
      ["Pink", 10],
      ["White", 8]
    ],
    [
      ["Instagram", 10],
      ["Facebook", 8],
      ["Twitch", 5],
      ["Youtube", 5]
    ],
    [
      ["Funny", 10],
      ["Smart", 8],
      ["Normal", 5],
      ["Sad", 3],
      ["Depressed", 0]
    ],
    [
      ["Dog", 10],
      ["Cat", 5],
      ["Rabbit", 8],
      ["Hamster", 3]
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Personality Test"),
          backgroundColor: const Color(0xFFc38452),
        ),
        body: currentQuestion < questions.length
            ? Center(
                child: Column(
                  children: [
                    Question(questions[currentQuestion]),
                    for (var answer in answers[currentQuestion])
                      Answer(
                        answer[0],
                        () => answeredQuestion(answer[1]),
                      )
                  ],
                ),
              )
            : Result(totalScore, resetQuiz),
        backgroundColor: const Color(0xFFe3c099),
      ),
    );
  }
}
