// ignore_for_file: avoid_print
import 'package:code_buddy/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
void main() {
  print("App opened");
  runApp(
    const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
