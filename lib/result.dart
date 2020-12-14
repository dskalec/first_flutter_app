import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restartQuiz;

  Result(this.totalScore, this.restartQuiz);

  String get resultMessage {
    String text;
    if (totalScore <= 8) {
      text = 'You are awesome and innocent.';
    } else if (totalScore <= 12) {
      text = 'Pretty likeable';
    } else if (totalScore <= 16) {
      text = 'You are ..... strange!';
    } else {
      text = 'You are so bad!';
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultMessage,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quizz'),
            onPressed: restartQuiz,
          )
        ],
      ),
    );
  }
}
