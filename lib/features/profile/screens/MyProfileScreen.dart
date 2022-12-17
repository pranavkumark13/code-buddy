// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

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
  return Container();
  }
} 