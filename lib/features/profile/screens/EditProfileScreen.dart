// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/ChipWidget.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:code_buddy/widgets/CustomRadioButton.dart';
import 'package:code_buddy/widgets/CustomTextBox.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/DropDownWidget.dart';
import 'package:code_buddy/widgets/HeaderView.dart';
import 'package:code_buddy/widgets/ImagePickerButton.dart';
import 'package:code_buddy/widgets/Separator.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends BasePageScreen {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends BaseScreenState<EditProfileScreen>
    with BaseScreen {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var dobController = TextEditingController();
  var countryController = TextEditingController();
  var phoneController = TextEditingController();
  var nationalityController = TextEditingController();

  int gender = 0;

  var githubController = TextEditingController();
  var linkedinController = TextEditingController();
  var designationController = TextEditingController();

  var years = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "10+"];
  var months = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"];
  var profileCategory = [
    "Front end development",
    "Software Testing",
    "Backend development",
    "Mobile app development",
    "Cloud Infrastructure",
    "Devops",
    "Data Science and AI",
    "UI/UX"
  ];
  var technologies = [
    "Flutter",
    "React",
    "React Native",
    "Angular",
    "Django",
    "Flask",
    "Node.js",
    ""
  ];
  var codingLanguages = [
    "C",
    "C++",
    "Java",
    "Python",
    "Ruby",
    "Dart",
    "Go",
    "Javascript",
    "Swift",
    "Objective C"
  ];

  var categoryOfProfile = "";
  var experienceInYears = "";
  var experienceInMonths = "";
  var skills = [];
  var languages = [];

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    dobController.dispose();
    countryController.dispose();
    phoneController.dispose();
    nationalityController.dispose();
    deallocateMemory();
    super.dispose();
  }

  @override
  List<Widget>? getActions() {
    return [
      GestureDetector(
        onTap: () {
          StackNavigator.instance.popScreen(context);
        },
        child: Container(
          margin: const EdgeInsets.only(right: 12),
          child: Icon(
            Iconsax.tick_circle,
            color: Colours.black,
          ),
        ),
      ),
    ];
  }

  @override
  bool showAppBar = true;

  @override
  String appBarTitle() {
    return "Edit Profile";
  }

  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Separator(
            height: 25,
          ),
          Container(
            alignment: Alignment.center,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: CustomImageView(
                    url:
                        'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=',
                    height: 90,
                    width: 90,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 65, left: 65),
                  child: const ImagePickerButton(),
                ),
              ],
            ),
          ),
          Separator(
            height: 15,
          ),
          HeaderView(title: "Info"),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CustomTextField(
                      text: "Your Name",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: nameController,
                      textInputType: TextInputType.text),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Email ID",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: emailController,
                      textInputType: TextInputType.emailAddress),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Phone Number",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: phoneController,
                      textInputType: TextInputType.phone),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Date of Birth",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: dobController,
                      textInputType: TextInputType.datetime),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Gender",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                // gender radio
                CustomRadioButton(
                    itemName: "Male",
                    radioValue: 0,
                    onSelect: (int val) {
                      gender = val;
                    }),
                CustomRadioButton(
                    itemName: "Female",
                    radioValue: 1,
                    onSelect: (int val) {
                      gender = val;
                    }),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Nationality",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: nationalityController,
                      textInputType: TextInputType.datetime),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Country of Residence",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: countryController,
                      textInputType: TextInputType.datetime),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Languages Known",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Wrap(
                  spacing: 6.0,
                  children: [
                    ChipWidget(
                      chipName: 'English',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Hindi',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Tamil',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Telugu',
                      showDelete: true,
                      onDelete: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Separator(
            height: 15,
          ),
          HeaderView(title: "My Professional Information"),
          Separator(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CustomTextField(
                      text: "Github profile link",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: githubController,
                      textInputType: TextInputType.text),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Linkedin profile link",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: linkedinController,
                      textInputType: TextInputType.text),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: CustomTextField(
                      text: "Profile Category",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Separator(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropDownWidget(
                      list: profileCategory,
                      onSelect: (dynamic category) {
                        categoryOfProfile = category;
                      }),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Current Designation",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  child: CustomTextBox(
                      textEditingController: designationController,
                      textInputType: TextInputType.text),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Work Experience",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Separator(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 80,
                      child: DropDownWidget(
                          list: years,
                          onSelect: (dynamic experience) {
                            experienceInYears = experience;
                          }),
                    ),
                    CustomTextField(
                        text: "Years",
                        textColor: Colours.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                    SizedBox(
                      width: 80,
                      child: DropDownWidget(
                          list: months,
                          onSelect: (dynamic experience) {
                            experienceInYears = experience;
                          }),
                    ),
                    CustomTextField(
                        text: "Months",
                        textColor: Colours.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Technologies known",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Separator(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropDownWidget(
                      list: technologies,
                      onSelect: (dynamic technology) {
                        setState(() {
                          skills.add(technology);
                        });
                      }),
                ),
                Separator(
                  height: 10,
                ),
                Wrap(
                  spacing: 6.0,
                  children: [
                    ChipWidget(
                      chipName: 'iOS',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Flutter',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Android',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Flask',
                      showDelete: true,
                      onDelete: () {},
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: CustomTextField(
                      text: "Programming languages known",
                      textColor: Colours.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Separator(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: DropDownWidget(
                      list: codingLanguages,
                      onSelect: (dynamic language) {
                        setState(() {
                          languages.add(language);
                        });
                      }),
                ),
                Separator(
                  height: 10,
                ),
                Wrap(
                  spacing: 6.0,
                  children: [
                    ChipWidget(
                      chipName: 'Swift',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Dart',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Java',
                      showDelete: true,
                      onDelete: () {},
                    ),
                    ChipWidget(
                      chipName: 'Python',
                      showDelete: true,
                      onDelete: () {},
                    ),
                  ],
                ),
                Separator(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void deallocateMemory() {
    githubController.dispose();
    linkedinController.dispose();
    designationController.dispose();
    nameController.dispose();
    emailController.dispose();
    dobController.dispose();
    countryController.dispose();
    phoneController.dispose();
    nationalityController.dispose();
    skills.clear();
    languages.clear();
    categoryOfProfile = "";
    experienceInYears = "";
    experienceInMonths = "";
  }
}
