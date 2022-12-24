// ignore_for_file: file_names
import 'package:code_buddy/widgets/CustomTextWidget.dart';
import 'package:flutter/material.dart';
class CreateFeedWidget extends StatefulWidget {
  const CreateFeedWidget({super.key});

  @override
  State<CreateFeedWidget> createState() => _CreateFeedWidgetState();
}

class _CreateFeedWidgetState extends State<CreateFeedWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextWidget(text: "What do you want to talk about?");
  }
}