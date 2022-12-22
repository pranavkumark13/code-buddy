// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class BuddyHuntScreen extends BasePageScreen {
  const BuddyHuntScreen({super.key});

  @override
  State<BuddyHuntScreen> createState() => _BuddyHuntScreenState();
}

class _BuddyHuntScreenState extends BaseScreenState<BuddyHuntScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "";
  }
  
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
    return Container();
  }
} 