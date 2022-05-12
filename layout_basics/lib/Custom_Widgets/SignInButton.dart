import 'package:layout_basics/Custom_Widgets/CustomElevatedButton.dart';
import 'package:flutter/material.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    required String text,
    required Color color,
    required Color textColor,
    required VoidCallback onPressed,
    double height = 50.0,
  }) : super(
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 16.0),
          ),
          color: color,
          onPressed: onPressed,
          height: height,
        );
}
