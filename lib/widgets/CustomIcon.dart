// ignore_for_file: must_be_immutable, file_names
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData iconData;
  Function? onTap;
  EdgeInsetsGeometry? margin;
  double? iconSize;
  Color? iconColor;
  CustomIcon(
      {super.key,
      required this.iconData,
      this.onTap,
      this.iconSize,
      this.iconColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        margin: margin,
        child: Icon(
          iconData,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
