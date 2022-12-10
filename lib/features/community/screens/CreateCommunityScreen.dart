// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateCommunityScreen extends BasePageScreen {
  const CreateCommunityScreen({super.key});

  @override
  State<CreateCommunityScreen> createState() => _CreateCommunityScreenState();
}

class _CreateCommunityScreenState extends BaseScreenState<CreateCommunityScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Create a Community";
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.popScreen(context);}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.tick_circle, color: Colours.black,)))];
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