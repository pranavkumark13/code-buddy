// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class CustomRadioButton extends StatefulWidget {
  String itemName;
  int radioValue;
  Function(int) onSelect;
  CustomRadioButton({super.key, required this.itemName, required this.radioValue , required this.onSelect});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
  return Container(
      padding: const EdgeInsets.all(13),
      child: Row(
        children: [
          CustomTextField(text: widget.itemName, textColor: Colours.black, fontSize: 15, fontWeight: FontWeight.w600,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Radio(value: widget.radioValue, groupValue: selectedValue, onChanged: (int? val) {
                  if(val != null){
                    setState(() {
                      selectedValue = val;
                    });
                  }
                }),
              ],
            ),
          ),
        ],
      ),

    );
  }
}