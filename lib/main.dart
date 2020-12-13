import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_currentQuestion]['questionText']),
            ...(questions[_currentQuestion]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList(),
          ],
        ), // <Widget> specifies type of list items, moze i bez tog
      ),
    );
  }
}
