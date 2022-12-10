// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class FAQScreen extends BasePageScreen {
  const FAQScreen({super.key});

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends BaseScreenState<FAQScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "FAQs";
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