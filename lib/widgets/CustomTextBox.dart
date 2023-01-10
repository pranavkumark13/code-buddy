// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';

class CustomTextBox extends StatefulWidget {
  TextEditingController textEditingController;
  TextInputType textInputType;
  int? maxLines;
  String? hint;
  Widget? suffixIcon;
  Widget? prefixIcon;
  CustomTextBox(
      {super.key,
      required this.textEditingController,
      required this.textInputType,
      this.maxLines,
      this.hint,
      this.suffixIcon,
      this.prefixIcon});

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      style: TextStyle(
        color: Colours.black,
      ),
      maxLines: widget.maxLines,
      showCursor: true,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colours.borderColor)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colours.borderColor)),
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        filled: true,
        fillColor: Colours.tintBlue,
        hintText: widget.hint,
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        isDense: true,
        contentPadding: const EdgeInsets.all(13),
      ),
      keyboardType: widget.textInputType,
    );
  }
}
