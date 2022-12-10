// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/LocalImageView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditDeveloperProfile extends BasePageScreen {
  const EditDeveloperProfile({super.key});

  @override
  State<EditDeveloperProfile> createState() => _EditDeveloperProfileState();
}

class _EditDeveloperProfileState extends BaseScreenState<EditDeveloperProfile> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Edit my Dev Profile";
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