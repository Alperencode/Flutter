import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetFunc;

  Result(this.score, this.resetFunc);

  String get resultText {
    String text;
    if (score < 15) {
      text = "No comment for you 🤐";
    } else if (score < 20) {
      text = "Mmm... strange personality 🤨? ";
    } else if (score < 30) {
      text = "Nice personality, love it 🥰";
    } else {
      text = "Awesome personality, I wanna meet you 🤩";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            resultText,
            style: const TextStyle(
              fontSize: 24,
              color: Color(0xFF6b3e2e),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: resetFunc,
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFa1785c),
          ),
          child: const Text(
            "Try Again",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ));
  }
}
