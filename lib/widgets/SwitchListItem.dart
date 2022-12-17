// ignore_for_file: file_names, must_be_immutable
import 'dart:io';

import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SwitchListItem extends StatefulWidget {
  String itemName;
  IconData icon;
  Function(bool) onChanged;
  SwitchListItem({super.key, required this.itemName, required this.icon, required this.onChanged});

  @override
  State<SwitchListItem> createState() => _SwitchListItemState();
}

class _SwitchListItemState extends State<SwitchListItem> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
  return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          CustomIcon(iconData: widget.icon, onTap: (){}),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: CustomTextField(text: widget.itemName, textColor: Colours.black, fontSize: 15, fontWeight: FontWeight.w600,),
          ),
          Platform.isIOS ? Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoSwitch(
                  value: val,
                  thumbColor: CupertinoColors.systemBlue,
                  trackColor: CupertinoColors.systemGreen,
                  activeColor: CupertinoColors.systemGreen,
                  onChanged: (bool value) {
                    setState(() {
                      val = value;
                    });
                  },
                  ),
              ],
            ),
          ) : Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  value: val,
                  inactiveThumbColor: Colors.blue,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    setState(() {
                      val = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}