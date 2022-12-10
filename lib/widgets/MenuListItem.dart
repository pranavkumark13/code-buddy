// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class MenuListItem extends StatefulWidget {
  String itemName;
  IconData icon;
  Function onTap;
  MenuListItem({super.key, required this.itemName, required this.icon, required this.onTap});

  @override
  State<MenuListItem> createState() => _MenuListItemState();
}

class _MenuListItemState extends State<MenuListItem> {
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
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colours.blueAccent,
                borderRadius: BorderRadius.circular(7),
              ),
              child:  Icon(
                widget.icon,
                color: Colours.white,
              ),
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
                    color: Colours.grey,
                    size: 15,
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