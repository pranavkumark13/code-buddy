// ignore_for_file: file_names
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackNavigator {
  StackNavigator._();
  static final instance = StackNavigator._();

  void sendToScreen(BuildContext context, dynamic screen) {
    if (Platform.isAndroid) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
    } else {
      Navigator.push(context, CupertinoPageRoute(builder: (context) => screen));
    }
  }

  void popScreen(BuildContext context) {
    Navigator.of(context).pop();
  }

  void popScreenFromStack(BuildContext context) {
    Navigator.pop(context);
  }
}
