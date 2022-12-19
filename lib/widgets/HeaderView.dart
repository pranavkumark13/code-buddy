// ignore_for_file: must_be_immutable, file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class HeaderView extends StatelessWidget {
  String title;
  HeaderView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colours.lightGrey,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(5),
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        child: CustomTextField(text: title, textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
