// ignore_for_file: file_names
import 'package:code_buddy/features/profile/screens/OthersProfileScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/ProfileSearchItem.dart';
import 'package:flutter/material.dart';

class PeopleSearchTabScreen extends BasePageScreen {
  const PeopleSearchTabScreen({super.key});

  @override
  State<PeopleSearchTabScreen> createState() => _PeopleSearchTabScreenState();
}

class _PeopleSearchTabScreenState extends BaseScreenState<PeopleSearchTabScreen> with BaseScreen {
  
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
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 20,
      itemBuilder: (context, index) {
        return ProfileSearchItem(onTap: () {
          StackNavigator.instance.sendToScreen(context, const OthersProfileScreen());
        },);
      },
    );
  }
} 