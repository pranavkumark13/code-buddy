// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CircularNetworkImage.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class ProfileSearchItem extends StatelessWidget {
  Function onTap;
  ProfileSearchItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap.call();
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircularNetworkImage(url: ''),
            Container(
              margin: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(text: 'Harry Brooks', textColor: Colours.blueAccent, fontSize: 14, fontWeight: FontWeight.w600),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(text: 'Android Developer', textColor: Colours.grey, fontSize: 12, fontWeight: FontWeight.normal),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}