import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  // Constructor
  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: 
        Text(question,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              ),
            textAlign: TextAlign.center
        )
      );
   }
}
