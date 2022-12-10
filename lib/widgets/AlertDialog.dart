// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showIOSAlertDialog(BuildContext context, String title, String message, String buttonOne, String buttonTwo, Function positiveAction) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
            positiveAction.call();
          },
          child: Text(buttonOne),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(buttonTwo),
        ),
      ],
    ),
  );
}

void showAndroidAlertDialog(BuildContext context, String title, String message, String buttonOne, String buttonTwo, Function positiveAction){
  showDialog<void>(
    context: context,
    barrierDismissible: false, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text(buttonOne),
            onPressed: () {
              Navigator.of(context).pop();
              positiveAction.call();
            },
          ),
          TextButton(
            child: Text(buttonTwo),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}