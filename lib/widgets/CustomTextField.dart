// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  String text;
  Color textColor;
  double fontSize;
  FontWeight fontWeight;
  CustomTextField({super.key, required this.text, required this.textColor, required this.fontSize, required this.fontWeight});
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.textColor,
        fontSize: widget.fontSize,
        fontWeight: widget.fontWeight,
        fontFamily: "PoppinsRegular",
      ),
    );
  }
}