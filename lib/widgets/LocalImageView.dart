// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
class LocalImageView extends StatefulWidget {
  double width;
  double height;
  String path;
  LocalImageView({super.key, required this.path, required this.width, required this.height});
  @override
  State<LocalImageView> createState() => _LocalImageViewState();
}

class _LocalImageViewState extends State<LocalImageView> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(widget.path),
      fit: BoxFit.cover,
      width: widget.width,
      height: widget.height,
    );
  }
}