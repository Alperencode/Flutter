import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function() pressedFunction;


  Answers(this.pressedFunction);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      // width: double.infinity,
      child:
      // make floating button
        ElevatedButton(
          child: Text("Answer 1"),
          onPressed: pressedFunction,
          style: ElevatedButton.styleFrom(
            primary: Colors.black
          )),
      );
  }
}