import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function() pressedFunction;
  final String answerText;

  Answers(this.pressedFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: ElevatedButton(
          child: Text(
            answerText,
            // I added textStyle to increase fontsize
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          onPressed: pressedFunction,
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          )),
    );
  }
}