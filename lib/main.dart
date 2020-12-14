import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// inheritance using extends
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // _ turns it into a private class
  var _currentQuestion = 0;
  var _totalScore = 0;
  final _questions = const [
    // in Dart this is called a Map, not a dictionary
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 2},
        {'text': 'Lion', 'score': 8},
        {'text': 'Bird', 'score': 5},
      ],
    },
    {
      'questionText': 'What\'s your favourite music band?',
      'answers': [
        {'text': 'Nickelback', 'score': 5},
        {'text': 'Daughtry', 'score': 3},
        {'text': 'PoTF', 'score': 2},
        {'text': 'Evanescence', 'score': 8},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _currentQuestion++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
    });
  }

  // Widget is the return type of the build method
  // BuildContext is the type of the context argument
  @override // makes the code cleaner -> makes it clear that we're overriding it
  Widget build(BuildContext context) {
    // MaterialApp is of type Widget (extends StatefulWidget)

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: _currentQuestion < _questions.length
              ? Quizz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  currentQuestion: _currentQuestion)
              : Result(
                  _totalScore,
                  _resetQuiz,
                ) // <Widget> specifies type of list items, moze i bez tog
          ),
    );
  }
}
