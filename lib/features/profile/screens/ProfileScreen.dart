// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/community/screens/MyCommunityScreen.dart';
import 'package:code_buddy/features/payment/screens/PaymentHistoryScreen.dart';
import 'package:code_buddy/features/payment/screens/PaymentMethodsScreen.dart';
import 'package:code_buddy/features/profile/screens/MyDeveloperProfileScreen.dart';
import 'package:code_buddy/features/profile/screens/ProfileAboutScreen.dart';
import 'package:code_buddy/features/projects/screens/MyProjectsScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/MenuListItem.dart';
import 'package:code_buddy/widgets/ProfileHeaderView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProfileScreen extends BasePageScreen {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends BaseScreenState<MyProfileScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "";
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
            margin: const EdgeInsets.only(left: 10, top: 7),
            child: const ProfileHeaderView(),
          ),
          const SizedBox(
            height: 40,
          ),
          MenuListItem(itemName: 'About Me', icon: Iconsax.user, onTap: () {
            StackNavigator.instance.sendToScreen(context, const ProfileAboutScreen());
          },),
          MenuListItem(itemName: 'My Communities', icon: Iconsax.people, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyCommunityScreen());
          },),
          MenuListItem(itemName: 'My Dev Profile', icon: Iconsax.code, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyDeveloperProfileScreen());
          },),
          MenuListItem(itemName: 'My Projects', icon: Iconsax.note, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyProjectsScreen());
          },),
          MenuListItem(itemName: 'My Payment Methods', icon: Icons.payment, onTap: () {
            StackNavigator.instance.sendToScreen(context, const PaymentMethodsScreen());
          },),
          MenuListItem(itemName: 'My Payment History', icon: Icons.history, onTap: () {
            StackNavigator.instance.sendToScreen(context, const PaymentHistoryScreen());
          },),
        ],
      ),
    );
  }
} 