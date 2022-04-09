// Didn't start yet its just initializing
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Name Generator"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text(
            "Name Generator App",
          ),
        ),
      ),
    );
  }
}
