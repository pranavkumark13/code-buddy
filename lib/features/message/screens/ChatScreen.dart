// ignore_for_file: file_names
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class ChatScreen extends BasePageScreen {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends BaseScreenState<ChatScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Chats";
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
    return const Center(
      child: Text("Chat with users, show lists of chats"),
    );
  }
} 