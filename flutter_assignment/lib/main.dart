// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import './message.dart';
import './textControl.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _possibleMessageText = ['Hello', 'Bye'];
  var _messageText = 'Hello';
  var _count = 0;

  void _changeText() {
    if (_count == 0) {
      _count = 1;
    } else {
      _count = 0;
    }
    setState(() {
      _messageText = _possibleMessageText[_count];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first assignment')),
        body: Column(
          children: [
            Message(_messageText),
            TextControl(_changeText),
          ],
        ),
      ),
    );
  }
}
