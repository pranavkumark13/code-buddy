// ignore_for_file: file_names
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class MyProfileBookmarksTabScreen extends BasePageScreen {
  const MyProfileBookmarksTabScreen({super.key});

  @override
  State<MyProfileBookmarksTabScreen> createState() => _MyProfileBookmarksTabScreenState();
}

class _MyProfileBookmarksTabScreenState extends BaseScreenState<MyProfileBookmarksTabScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "";
  }
  
  @override
  List<Widget>? getActions() {
    return [];
  }

  @override
  set isBack(bool isBack) {
    isBack = false;
    super.isBack = isBack;
  }
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return Container();
  }
} 