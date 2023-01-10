// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';

class CreateFeedArea extends StatefulWidget {
  TextEditingController textEditingController;
  CreateFeedArea({super.key, required this.textEditingController});

  @override
  State<CreateFeedArea> createState() => _CreateFeedAreaState();
}

class _CreateFeedAreaState extends State<CreateFeedArea> {
  @override
  void dispose() {
    widget.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      style: TextStyle(
        color: Colours.black,
      ),
      maxLines: 12,
      showCursor: true,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: "What do you want to talk about?",
        isDense: true,
        contentPadding: EdgeInsets.all(13),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
