// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/profile/screens/EditDeveloperProfile.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/ChipWidget.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/CustomTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProfessionalProfileScreen extends BasePageScreen {
  const MyProfessionalProfileScreen({super.key});

  @override
  State<MyProfessionalProfileScreen> createState() => _MyProfessionalProfileScreenState();
}

class _MyProfessionalProfileScreenState extends BaseScreenState<MyProfessionalProfileScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "My Professional Profile";
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
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: CustomTextField(text: "Github", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextWidget(text: "@pranav9828")
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Linkedin", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextWidget(text: "Pranav Kumar K",)
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Current Designation", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextWidget(text: "iOS Developer")
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Work Experience", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextWidget(text: "2 years")
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Technologies known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 12,
            ),
            Wrap(
              spacing: 6.0,
              children: [
                ChipWidget(chipName: 'iOS', showDelete: false),
                ChipWidget(chipName: 'Flutter', showDelete: false),
                ChipWidget(chipName: 'Android', showDelete: false),
                ChipWidget(chipName: 'Flask', showDelete: false),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Programming languages known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 12,
            ),
            Wrap(
              spacing: 6.0,
              children: [
                ChipWidget(chipName: 'Swift', showDelete: false),
                ChipWidget(chipName: 'Dart', showDelete: false),
                ChipWidget(chipName: 'Java', showDelete: false),
                ChipWidget(chipName: 'Python', showDelete: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 