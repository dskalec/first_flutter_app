import 'package:flutter/material.dart';

import './question.dart';

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
    var questions = [
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
      'What\'s your favourite music band?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Foodness'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_currentQuestion]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            )
          ],
        ), // <Widget> specifies type of list items, moze i bez tog
      ),
    );
  }
}
