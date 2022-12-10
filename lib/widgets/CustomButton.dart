// ignore_for_file: must_be_immutable, file_names
import 'dart:io';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  Color backgroundColor;
  String title;
  Color textColor;
  Function onTap;
  CustomButton({super.key, required this.backgroundColor,required this.title, required this.textColor, required this.onTap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid){
      return InkWell(
        onTap: () {
          widget.onTap.call();
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: CustomTextField(text: widget.title, textColor: widget.textColor, fontSize: 15, fontWeight: FontWeight.w600),
        ),
      );
    }else{
      return CupertinoButton(
        onPressed: widget.onTap.call(),
        color: widget.backgroundColor,
        child: CustomTextField(text: widget.title, textColor: widget.textColor, fontSize: 15, fontWeight: FontWeight.w600),
      );
    }
  }
}