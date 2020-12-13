import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // this value will never change after initialized with the constructor
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 22),
        textAlign: TextAlign.center,
      ),
    );
  }
}
