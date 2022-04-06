import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function(int) answeredQuestion;
  final int currentQuestion;

  Quiz(this.answeredQuestion, this.questions, this.currentQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currentQuestion]['questionText'] as String),
        ...(questions[currentQuestion]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answers(
            () => answeredQuestion(answer['score'] as int),
            answer['text'] as String
          );
        }).toList()
      ],
    );
  }
}
