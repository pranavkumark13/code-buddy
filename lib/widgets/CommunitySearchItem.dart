// ignore_for_file: file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CircularNetworkImage.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class CommunitySearchItem extends StatelessWidget {
  const CommunitySearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
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
                  CustomTextField(text: 'Foobar', textColor: Colours.blueAccent, fontSize: 14, fontWeight: FontWeight.w600),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(text: 'Make changes in tech', textColor: Colours.black, fontSize: 13, fontWeight: FontWeight.normal),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomTextField(text: '200 People follow this community', textColor: Colours.grey, fontSize: 12, fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}