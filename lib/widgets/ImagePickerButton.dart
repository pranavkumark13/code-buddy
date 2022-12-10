// ignore_for_file: file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
class ImagePickerButton extends StatefulWidget {
  const ImagePickerButton({super.key});

  @override
  State<ImagePickerButton> createState() => _ImagePickerButtonState();
}

class _ImagePickerButtonState extends State<ImagePickerButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colours.lightBlue,
          borderRadius: BorderRadius.circular(7),
        ),
        child: const Icon(
          Icons.camera_alt_rounded,
          color: Colours.white,
        ),
      ),
    );
  }
}