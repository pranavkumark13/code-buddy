// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
class CircularNetworkImage extends StatefulWidget {
  String url;
  double? width;
  double? height;
  CircularNetworkImage({super.key, required this.url, this.width = 45, this.height = 45});

  @override
  State<CircularNetworkImage> createState() => _CircularNetworkImageState();
}

class _CircularNetworkImageState extends State<CircularNetworkImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
          fit: BoxFit.contain,
        ),  
      ),
    );
  }
}