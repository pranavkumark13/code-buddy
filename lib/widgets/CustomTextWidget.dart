// ignore_for_file: must_be_immutable, file_names

import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatefulWidget {
  String text;
  CustomTextWidget({super.key, required this.text});

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colours.tintBlue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          color: Colours.black,
          fontFamily: "PoppinsRegular",
        ),
      ),
    );
  }
}
