import 'package:flutter/material.dart';
import 'package:ui_challenge/MyIcons.dart';
import 'package:ui_challenge/ImageCarousel.dart';
import 'package:ui_challenge/Description.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MyIcons(),
          ImageCarousel(),
          const Description(),
        ],
      ),
    );
  }
}
