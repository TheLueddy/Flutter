import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Blue', 'Green', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Elephant', 'Lion', 'Dog']
    },
    {
      'questionText': 'What\'s your favorite TV channel?',
      'answers': ['Sat1', 'Pro7', 'Dmax', 'RTL']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    if (_questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
