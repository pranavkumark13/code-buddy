// ignore_for_file: file_names
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colours {
  static var white = Platform.isAndroid ? Colors.white : CupertinoColors.white;
  static var black = Platform.isAndroid ? Colors.black : CupertinoColors.black;
  static var red = Platform.isAndroid ? Colors.red : CupertinoColors.systemRed;
  static var blueAccent =
      Platform.isAndroid ? Colors.lightBlueAccent : CupertinoColors.systemBlue;
  static var grey =
      Platform.isAndroid ? Colors.grey : CupertinoColors.systemGrey;
  static const lightBlue = Colors.lightBlue;
  static const lightGrey = Color.fromARGB(255, 203, 203, 203);
  static const tintBlue = Color.fromARGB(255, 216, 236, 255);
  static const borderColor = Color.fromARGB(255, 179, 177, 177);
  static var tintGrey = Colors.grey[100];
}
