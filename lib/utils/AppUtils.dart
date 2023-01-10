// ignore_for_file: file_names
import 'dart:io';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppUtils {
  AppUtils._();
  static final instance = AppUtils._();

  GestureDetector appBarActionElement(Function onTap, String name) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15, top: 15),
        child: CustomTextField(
            text: name,
            textColor: Colours.blueAccent,
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  PreferredSizeWidget appBar(
      BuildContext context, String title, List<Widget> actions) {
    return AppBar(
      backgroundColor:
          Platform.isAndroid ? Colours.white : CupertinoColors.white,
      title: CustomTextField(
          text: title,
          textColor: Platform.isAndroid ? Colours.black : CupertinoColors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600),
      centerTitle: true,
      elevation: 0.0,
      actions: actions,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Platform.isAndroid ? Colours.black : CupertinoColors.black,
        ),
        onPressed: () {
          StackNavigator.instance.popScreen(context);
        },
      ),
    );
  }

  void showBottomSheet(BuildContext context, List<Widget> children) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 400,
          decoration: BoxDecoration(
            color: Platform.isAndroid ? Colours.white : CupertinoColors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: children,
            ),
          ),
        );
      },
    );
  }
}
