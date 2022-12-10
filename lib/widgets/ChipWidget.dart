// ignore_for_file: must_be_immutable, file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
class ChipWidget extends StatefulWidget {
  String chipName;
  bool showDelete;
  Function? onDelete;
  ChipWidget({super.key, required this.chipName, required this.showDelete, this.onDelete});

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  @override
  Widget build(BuildContext context) {
    if(widget.showDelete) {
      return Chip(
        backgroundColor: Colours.tintBlue,
        label: Text(widget.chipName),
        onDeleted: () {
          widget.onDelete?.call();
        },
      );
    }else {
      return Chip(
        backgroundColor: Colours.tintBlue,
        label: Text(widget.chipName),
      );
    }
  }
}