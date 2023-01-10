// ignore_for_file: file_names, overridden_fields

import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/AlertDialog.dart';
import 'package:code_buddy/widgets/CustomButton.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/Separator.dart';
import 'package:flutter/material.dart';

class AccountScreen extends BasePageScreen {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends BaseScreenState<AccountScreen>
    with BaseScreen {
  @override
  String appBarTitle() {
    return "Account";
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
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Separator(
            height: 20,
          ),
          CustomTextField(
              text: "Delete Account",
              textColor: Colours.red,
              fontSize: 16,
              fontWeight: FontWeight.w600),
          Separator(
            height: 20,
          ),
          CustomTextField(
              text:
                  "All your personal data will be permanantly deleted from our system and it cannot be recovered.",
              textColor: Colours.black,
              fontSize: 14,
              fontWeight: FontWeight.normal),
          Separator(
            height: 25,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomButton(
                backgroundColor: Colors.red,
                title: "Delete your Account",
                textColor: Colors.white,
                onTap: () {
                  showAndroidAlertDialog(
                      context,
                      "Delete Account",
                      "Are you sure you want to delete your account?",
                      "Yes",
                      "No",
                      () {});
                }),
          ),
        ],
      ),
    );
  }
}
