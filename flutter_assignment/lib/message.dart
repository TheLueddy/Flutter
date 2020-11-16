import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String messageText;

  Message(this.messageText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(messageText),
    );
  }
}