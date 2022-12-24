// ignore_for_file: file_names
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/ChipWidget.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/CustomTextWidget.dart';
import 'package:code_buddy/widgets/HeaderView.dart';
import 'package:flutter/material.dart';

class MyProfileInfoTabScreen extends BasePageScreen {
  const MyProfileInfoTabScreen({super.key});

  @override
  State<MyProfileInfoTabScreen> createState() => _MyProfileInfoTabScreenState();
}

class _MyProfileInfoTabScreenState extends BaseScreenState<MyProfileInfoTabScreen> with BaseScreen {
  
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
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderView(title: "Info"),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CustomTextField(text: "Your Name", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "Pranav Kumar K"),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Email ID", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "pranavk1310@gmail.com",)
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Phone Number", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "+91 7395925892")
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Date of Birth", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "13 October 1998")
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Gender", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "Male")
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Nationality", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "Indian")
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Country of Residence", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextWidget(text: "India")
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(text: "Languages known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Wrap(
                  spacing: 6.0,
                  children: [
                    ChipWidget(chipName: 'English', showDelete: false),
                    ChipWidget(chipName: 'Hindi', showDelete: false),
                    ChipWidget(chipName: 'Tamil', showDelete: false),
                    ChipWidget(chipName: 'Telugu', showDelete: false),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          HeaderView(title: "My Professional Information"),
          Container(
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
        ],
      ),
    );
  }
} 