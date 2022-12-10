// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/SwitchListItem.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PrivacySettingsScreen extends BasePageScreen {
  const PrivacySettingsScreen({super.key});

  @override
  State<PrivacySettingsScreen> createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends BaseScreenState<PrivacySettingsScreen> with BaseScreen {
  bool isCrashEnabled = false;
  bool canShareUsage = false;
  @override
  String appBarTitle() {
    return "Privacy Settings";
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  List<Widget>? getActions() {
    return [];
  }
  
  @override
  Widget body() {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListItem(itemName: "Share usage statistics", icon: Iconsax.graph, onChanged: (bool isSelected) {
            canShareUsage = isSelected;
          }),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: CustomTextField(text: "Share usage statistics with us which will help us improve the experience of the app.", textColor: Colours.grey, fontSize: 13, fontWeight: FontWeight.normal)),
          SwitchListItem(itemName: "Enable crash reporting", icon: Icons.report_outlined, onChanged: (bool isSelected) {
            isCrashEnabled = isSelected;
          }),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: CustomTextField(text: "Share crash data with us every time the app shuts down abruptly. It will help us identify and fix bugs and give you a good experience.", textColor: Colours.grey, fontSize: 13, fontWeight: FontWeight.normal)),
        ],
      ),
    );
  }
} 