import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class Names extends StatelessWidget {

  List<String> generateRandom(int length){
    List<String> names = [];
    for(int i=0;i<length;i++){
      names.add(WordPair.random().asPascalCase.toString());
    }
    return names;
  }


  Widget build(BuildContext context) {
    // I'll continue from here
    return Container(
      
    );
  }
}