// ignore_for_file: must_be_immutable, file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  IconData iconData;
  Function onTap;
  EdgeInsetsGeometry? margin;
  CustomIcon({super.key, required this.iconData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        margin: margin,
        child: Icon(
          iconData,
          color: Colours.black,
        ),
      ),
    );
  }
}