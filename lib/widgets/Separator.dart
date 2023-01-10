// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  double? width;
  double? height;
  Separator({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
