import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // this value will never change after initialized with the constructor
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
