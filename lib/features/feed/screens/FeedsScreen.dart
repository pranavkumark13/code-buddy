// ignore_for_file: file_names
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends BasePageScreen {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends BaseScreenState<FeedsScreen> with BaseScreen {
  
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
    return const Center(
      child: Text("See feeds to show them to the community/anyone"),
    );
  }
} 