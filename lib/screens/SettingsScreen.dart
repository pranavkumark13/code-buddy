// ignore_for_file: file_names, overridden_fields, avoid_print
import 'dart:io';
import 'package:code_buddy/screens/AccountScreen.dart';
import 'package:code_buddy/screens/FAQScreen.dart';
import 'package:code_buddy/screens/PrivacySettingsScreen.dart';
import 'package:code_buddy/screens/ThemeScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/AlertDialog.dart';
import 'package:code_buddy/widgets/DrawerListItem.dart';
import 'package:code_buddy/widgets/SwitchListItem.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends BasePageScreen {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseScreenState<SettingsScreen> with BaseScreen {
  bool isNotificationsEnabled = false;
  @override
  String appBarTitle() {
    return "Settings";
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
          SwitchListItem(itemName: "Push Notifications", icon: Iconsax.notification, onChanged: (bool value) {
            isNotificationsEnabled = value;
          }),
          DrawerListItem(itemName: "Account", icon: Iconsax.user, onTap: () {
            StackNavigator.instance.sendToScreen(context, const AccountScreen());
          }),
          DrawerListItem(itemName: "Theme", icon: Iconsax.brush, onTap: () {
            StackNavigator.instance.sendToScreen(context, const ThemeScreen());
          }),
          DrawerListItem(itemName: "Privacy Policy", icon: Icons.newspaper, onTap: () {}),
          DrawerListItem(itemName: "Privacy Settings", icon: Iconsax.shield, onTap: () {
            StackNavigator.instance.sendToScreen(context, const PrivacySettingsScreen());
          }),
          DrawerListItem(itemName: "About Us", icon: Icons.info_outlined, onTap: () {}),
          DrawerListItem(itemName: 'Feedback', icon: Iconsax.message_question, onTap: () {},),
          DrawerListItem(itemName: 'FAQs', icon: Icons.question_answer_outlined, onTap: () {
            StackNavigator.instance.sendToScreen(context, const FAQScreen());
          },),
          DrawerListItem(itemName: "Terms and Conditions", icon: Icons.menu, onTap: () {}),
          DrawerListItem(itemName: "Contact Us", icon: Icons.email_outlined, onTap: () {}),
          DrawerListItem(itemName: "Rate Us", icon: Iconsax.star, onTap: () {}),
          DrawerListItem(itemName: "Share", icon: Iconsax.share, onTap: () {}),
          DrawerListItem(itemName: "Log Out", icon: Iconsax.logout, onTap: () {
            if(Platform.isAndroid){
              showAndroidAlertDialog(context, "Log Out", "Are you sure you want to Log out?", "Yes", "No", (){
                print("logout successful");
              });
            }else{
              showIOSAlertDialog(context, "Log Out", "Are you sure you want to Log out?", "Yes", "No", (){
                print("failed to logout");
              });
            }
          }),
        ],
      ),
    );
  }
} 