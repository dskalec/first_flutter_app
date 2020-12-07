import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// inheritance using extends
class MyApp extends StatelessWidget {
  // Widget is the return type of the build method
  // BuildContext is the type of the context argument
  Widget build(BuildContext context) {
    // MaterialApp is of type Widget (extends StatefulWidget)
    return MaterialApp(
      home: Text('Hello World!'),
    );
  }
}
