// ignore_for_file: must_be_immutable, file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';
class DropDownWidget extends StatefulWidget {
  List<dynamic> list;
  Function(dynamic) onSelect;
  DropDownWidget({super.key, required this.list, required this.onSelect});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  dynamic dropdownValue;

  @override
  void initState() {
    dropdownValue = widget.list.first;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colours.tintBlue,
          borderRadius: BorderRadius.circular(7),
        ),
        child: DropdownButton<String>(
          value: dropdownValue,
          elevation: 16,
          isExpanded: true,
          onChanged: (String? value) {
            if(value != null) {
              setState(() {
                dropdownValue = value;
              });
            }
          },
          items: widget.list.map<DropdownMenuItem<String>>((dynamic value) {
            return DropdownMenuItem<String>(
              value: value,
              child: CustomTextField(text: value, textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.normal,),
            );
          }).toList(),
        ),
      ),
    );
  }
}