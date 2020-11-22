import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function presentDatePicker;

  AdaptiveFlatButton(this.text, this.presentDatePicker);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: presentDatePicker,
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        : MaterialButton(
            padding: EdgeInsets.zero,
            textColor: Theme.of(context).primaryColor,
            onPressed: presentDatePicker,
            child: Text(text),
          );
  }
}
