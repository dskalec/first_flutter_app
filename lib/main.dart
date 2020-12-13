import 'package:flutter/material.dart';

import './quizz.dart';
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
  final _questions = const [
    // in Dart this is called a Map, not a dictionary
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': ['Black', 'White', 'Red', 'None of the above'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Cat', 'Dog', 'Parrot', 'None of the above'],
    },
    {
      'questionText': 'What\'s your favourite music band?',
      'answers': ['Nickelback', 'Daughtry', 'PoTF', 'None of the above'],
    },
  ];

  void answerQuestion() {
    setState(() {
      _currentQuestion++;
    });
    print(_currentQuestion);
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
                answerQuestion: answerQuestion,
                questions: _questions,
                currentQuestion: _currentQuestion)
            : Result(), // <Widget> specifies type of list items, moze i bez tog
      ),
    );
  }
}
