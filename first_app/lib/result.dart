import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are innocent!';
    } else if (totalScore <= 24) {
      resultText = 'You are okay!';
    } else {
      resultText = 'You are evil!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Restart!'),
            onPressed: resetQuiz,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}
