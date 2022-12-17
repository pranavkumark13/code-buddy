// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
class CustomTextBox extends StatefulWidget {
  TextEditingController textEditingController;
  TextInputType textInputType;
  int? maxLines;
  CustomTextBox({super.key, required this.textEditingController, required this.textInputType, this.maxLines});

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      style: const TextStyle(
        color: Colours.black,
      ),
      maxLines: widget.maxLines,
      showCursor: true,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colours.borderColor)),
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colours.borderColor)),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: Colours.tintBlue,
      ),
      keyboardType: widget.textInputType,
    );
  }
}