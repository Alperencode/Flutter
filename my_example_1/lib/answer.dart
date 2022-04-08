import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback pressedFunction;

  Answer(this.answerText, this.pressedFunction);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        answerText,
        style: const TextStyle(fontSize: 15),
      ),
      style: ElevatedButton.styleFrom(
        primary: const Color(0xFFa1785c),
      ),
      onPressed: pressedFunction,
    );
  }
}
