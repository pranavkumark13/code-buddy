// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class SettingsListItem extends StatefulWidget {
  String itemName;
  IconData icon;
  Function onTap;
  SettingsListItem({super.key, required this.itemName, required this.icon, required this.onTap});

  @override
  State<SettingsListItem> createState() => _SettingsListItemState();
}

class _SettingsListItemState extends State<SettingsListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        child: Row(
          children: [
            CustomIcon(iconData: widget.icon, onTap: (){}),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: CustomTextField(text: widget.itemName, textColor: Colours.black, fontSize: 15, fontWeight: FontWeight.w600,),
            ),
          ],
        ),
      ),
    );
  }
}