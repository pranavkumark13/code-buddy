// ignore_for_file: file_names, overridden_fields, avoid_print
import 'dart:io';
import 'package:code_buddy/screens/AccountScreen.dart';
import 'package:code_buddy/screens/FAQScreen.dart';
import 'package:code_buddy/screens/PrivacySettingsScreen.dart';
import 'package:code_buddy/screens/ThemeScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/AlertDialog.dart';
import 'package:code_buddy/widgets/MenuListItem.dart';
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
          Container(
            color: Colours.tintGrey,
            padding: const EdgeInsets.all(5),
            child: SwitchListItem(itemName: "Push Notifications", icon: Iconsax.notification, onChanged: (bool value) {
              isNotificationsEnabled = value;
            }, forSettings: true,),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colours.tintGrey,
            padding: const EdgeInsets.all(5),
            child: MenuListItem(itemName: "Theme", icon: Iconsax.brush, onTap: () {
              StackNavigator.instance.sendToScreen(context, const ThemeScreen());
            }),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colours.tintGrey,
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                MenuListItem(itemName: "Account", icon: Iconsax.user, onTap: () {
                  StackNavigator.instance.sendToScreen(context, const AccountScreen());
                }),
                MenuListItem(itemName: "Terms and Conditions", icon: Icons.menu, onTap: () {}),
                MenuListItem(itemName: "Privacy Policy", icon: Icons.newspaper, onTap: () {}),
                MenuListItem(itemName: "Privacy Settings", icon: Iconsax.shield, onTap: () {
                  StackNavigator.instance.sendToScreen(context, const PrivacySettingsScreen());
                }),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colours.tintGrey,
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                MenuListItem(itemName: "About Us", icon: Icons.info_outlined, onTap: () {}),
                MenuListItem(itemName: "Contact Us", icon: Icons.email_outlined, onTap: () {}),
                MenuListItem(itemName: 'Feedback', icon: Iconsax.message_question, onTap: () {},),
                MenuListItem(itemName: 'FAQs', icon: Icons.question_answer_outlined, onTap: () {
                  StackNavigator.instance.sendToScreen(context, const FAQScreen());
                },),
                MenuListItem(itemName: "Rate Us", icon: Iconsax.star, onTap: () {}),
                MenuListItem(itemName: "Share", icon: Iconsax.share, onTap: () {}),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colours.tintGrey,
            padding: const EdgeInsets.all(5),
            child: MenuListItem(itemName: "Log Out", icon: Iconsax.logout, onTap: () {
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
          ),
        ],
      ),
    );
  }
} 