import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 5},
        {'text': 'Yellow', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 8},
        {'text': 'Dog', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favorite TV channel?',
      'answers': [
        {'text': 'Sat1', 'score': 8},
        {'text': 'Pro7', 'score': 7},
        {'text': 'Dmax', 'score': 10},
        {'text': 'RTL', 'score': 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
