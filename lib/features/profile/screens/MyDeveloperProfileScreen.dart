// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/profile/screens/EditDeveloperProfile.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/LocalImageView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/Colours.dart';

class MyDeveloperProfileScreen extends BasePageScreen {
  const MyDeveloperProfileScreen({super.key});

  @override
  State<MyDeveloperProfileScreen> createState() => _MyDeveloperProfileScreenState();
}

class _MyDeveloperProfileScreenState extends BaseScreenState<MyDeveloperProfileScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "My Dev Profile";
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.sendToScreen(context, const EditDeveloperProfile());}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.edit, color: Colours.black,)))];
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
  return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LocalImageView(path: 'assets/github.png', width: 35, height: 35),
              LocalImageView(path: 'assets/linkedin.png', width: 35, height: 35),
            ],
          ),
        ],
      ),
    );
  }
} 