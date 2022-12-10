// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomRadioButton.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class ThemeScreen extends BasePageScreen {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends BaseScreenState<ThemeScreen> with BaseScreen {
  
  int theme = 0;
  @override
  String appBarTitle() {
    return "Theme";
  }

  @override
  List<Widget>? getActions() {
    return [];
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomRadioButton(itemName: "Dark Mode", radioValue: 0, onSelect: (int selectedTheme){
            theme = selectedTheme;
          },),
          CustomRadioButton(itemName: "Light Mode", radioValue: 1, onSelect: (int selectedTheme){
            theme = selectedTheme;
          },),
          CustomRadioButton(itemName: "System Specific", radioValue: 2, onSelect: (int selectedTheme){
            theme = selectedTheme;
          },),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: CustomTextField(text: "Selecting this option will apply the device theme across the app.", textColor: Colours.grey, fontSize: 13, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
} 