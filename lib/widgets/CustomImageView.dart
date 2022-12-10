// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
class CustomImageView extends StatefulWidget {
  double width;
  double height;
  String url;
  CustomImageView({super.key, required this.url, required this.width, required this.height});
  @override
  State<CustomImageView> createState() => _CustomImageViewState();
}

class _CustomImageViewState extends State<CustomImageView> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: NetworkImage(widget.url),
      fit: BoxFit.cover,
      width: widget.width,
      height: widget.height,
    );
  }
}