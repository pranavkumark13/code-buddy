// ignore_for_file: file_names, overridden_fields
import 'dart:io';

import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/AlertDialog.dart';
import 'package:code_buddy/widgets/CustomButton.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountScreen extends BasePageScreen {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends BaseScreenState<AccountScreen> with BaseScreen {
  
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
          const SizedBox(
            height: 20,
          ),
          CustomTextField(text: "Delete Account", textColor: Platform.isAndroid ? Colors.red : CupertinoColors.systemRed, fontSize: 16, fontWeight: FontWeight.w600),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(text: "All your personal data will be permanantly deleted from our system and it cannot be recovered.", textColor: Platform.isAndroid ? Colors.black : CupertinoColors.black, fontSize: 14, fontWeight: FontWeight.normal),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CustomButton(backgroundColor: Colors.red, title: "Delete your Account", textColor: Colors.white , onTap: (){
              showAndroidAlertDialog(context, "Delete Account", "Are you sure you want to delete your account?", "Yes", "No", () {});
            }),
          ),
        ],
      ),
    );
  }
} 