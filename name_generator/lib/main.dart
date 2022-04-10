// Add random word generator feature
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final style = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  final randomWord = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Name Generator"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(
            randomWord.asPascalCase,
            style: style,
          ),
        ),
      ),
    );
  }
}
