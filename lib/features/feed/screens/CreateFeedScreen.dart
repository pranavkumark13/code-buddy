// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class CreateFeedScreen extends BasePageScreen {
  const CreateFeedScreen({super.key});

  @override
  State<CreateFeedScreen> createState() => _CreateFeedScreenState();
}

class _CreateFeedScreenState extends BaseScreenState<CreateFeedScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Create Feed";
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return const Center(
      child: Text("Create a feed to show them to the community/anyone"),
    );
  }
  
  @override
  List<Widget>? getActions() {
    return [];
  }
} 