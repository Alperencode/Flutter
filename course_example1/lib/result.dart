import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function() resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultText {
    String text;
    if (finalScore <= 5) {
      text = 'You are innocent!';
    } else if (finalScore <= 10) {
      text = 'You are still awesome!';
    } else if (finalScore <= 15) {
      text = 'That personality is strange...';
    } else {
      text = 'You have a dark personality...';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: resetQuiz,
            child: const Text(
              'Restart Quiz',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
