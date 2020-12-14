import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quizz extends StatelessWidget {
  final Function answerQuestion;
  final int currentQuestion;
  final List<Map<String, Object>> questions;

  Quizz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.currentQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[currentQuestion]['questionText']),
        ...(questions[currentQuestion]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
