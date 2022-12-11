// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/ChipWidget.dart';
import 'package:code_buddy/widgets/CustomTextBox.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/DropDownWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditDeveloperProfile extends BasePageScreen {
  const EditDeveloperProfile({super.key});

  @override
  State<EditDeveloperProfile> createState() => _EditDeveloperProfileState();
}

class _EditDeveloperProfileState extends BaseScreenState<EditDeveloperProfile> with BaseScreen {

  var githubController = TextEditingController();
  var linkedinController = TextEditingController();
  var designationController = TextEditingController();

  var years = ["0","1","2","3","4","5","6","7","8","9","10","10+"];
  var months = ["0","1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  var profileCategory = ["Front end development", "Software Testing", "Backend development", "Mobile app development", "Cloud Infrastructure", "Devops", "Data Science and AI", "UI/UX"];
  var technologies = ["Flutter", "React", "React Native", "Angular", "Django", "Flask", "Node.js", ""];
  var codingLanguages = ["C", "C++", "Java", "Python", "Ruby", "Dart", "Go", "Javascript", "Swift", "Objective C"];


  var categoryOfProfile = "";
  var experienceInYears = "";
  var experienceInMonths = "";
  var skills = [];
  var languages = [];

  @override
  void dispose() {
    deallocateMemory();
    super.dispose();
  }

  @override
  String appBarTitle() {
    return "";
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
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: CustomTextField(text: "Github profile link", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: githubController, textInputType: TextInputType.text),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Linkedin profile link", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: linkedinController, textInputType: TextInputType.text),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: CustomTextField(text: "Profile Category", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: DropDownWidget(list: profileCategory, onSelect: (dynamic category) {
                categoryOfProfile = category;
              }),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Current Designation", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: designationController, textInputType: TextInputType.text),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Work Experience", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 80,
                  child: DropDownWidget(list: years, onSelect: (dynamic experience) {
                    experienceInYears = experience;
                  }),
                ),
                CustomTextField(text: "Years", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
                SizedBox(
                  width: 80,
                  child: DropDownWidget(list: months, onSelect: (dynamic experience) {
                    experienceInYears = experience;
                  }),
                ),
                CustomTextField(text: "Months", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Technologies known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: DropDownWidget(list: technologies, onSelect: (dynamic technology) {
                setState(() {
                  skills.add(technology);
                });
              }),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 6.0,
              children: [
                ChipWidget(chipName: 'iOS', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Flutter', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Android', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Flask', showDelete: true, onDelete: () {},),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Programming languages known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: DropDownWidget(list: codingLanguages, onSelect: (dynamic language) {
                setState(() {
                  languages.add(language);
                });
              }),
            ),
            const SizedBox(
              height: 10,
            ),
            Wrap(
              spacing: 6.0,
              children: [
                ChipWidget(chipName: 'Swift', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Dart', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Java', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Python', showDelete: true, onDelete: () {},),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void deallocateMemory() {
    githubController.dispose();
    linkedinController.dispose();
    designationController.dispose();
    skills.clear();
    languages.clear();
    categoryOfProfile = "";
    experienceInYears = "";
    experienceInMonths = "";
  }
} 