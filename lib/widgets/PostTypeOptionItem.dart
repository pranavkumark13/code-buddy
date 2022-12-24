// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class PostTypeOptionItem extends StatefulWidget {
  String label;
  String description;
  IconData icon;
  Function onTap;
  PostTypeOptionItem({super.key, required this.label, this.description = "", required this.icon, required this.onTap});

  @override
  State<PostTypeOptionItem> createState() => _PostTypeOptionItemState();
}

class _PostTypeOptionItemState extends State<PostTypeOptionItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        child: Column(
          children: [
                Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colours.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:  Icon(
                    widget.icon,
                    color: Colours.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: CustomTextField(text: widget.label, textColor: Colours.black, fontSize: 15, fontWeight: FontWeight.w600,),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 55, right: 15),
              child: CustomTextField(text: widget.description, textColor: Colours.grey, fontSize: 13, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}