// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class DrawerListItem extends StatefulWidget {
  String itemName;
  IconData icon;
  Function onTap;
  DrawerListItem({super.key, required this.itemName, required this.icon, required this.onTap});

  @override
  State<DrawerListItem> createState() => _DrawerListItemState();
}

class _DrawerListItemState extends State<DrawerListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        margin: const EdgeInsets.only(left: 17, right: 17),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colours.black,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: CustomTextField(text: widget.itemName, textColor: Colours.black, fontSize: 15, fontWeight: FontWeight.w600,),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colours.black,
                    size: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}