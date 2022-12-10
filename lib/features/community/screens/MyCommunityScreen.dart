// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/community/screens/CreateCommunityScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyCommunityScreen extends BasePageScreen {
  const MyCommunityScreen({super.key});

  @override
  State<MyCommunityScreen> createState() => _MyCommunityScreenState();
}

class _MyCommunityScreenState extends BaseScreenState<MyCommunityScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "My Communities";
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.sendToScreen(context, const CreateCommunityScreen());}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.add_circle, color: Colours.black,)))];
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
        child: Text('Community Screen - Will be used to show list of users communities.'),
      );
  }
} 