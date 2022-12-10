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
import 'package:code_buddy/widgets/ImagePickerButton.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends BasePageScreen {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends BaseScreenState<EditProfileScreen> with BaseScreen {

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var dobController = TextEditingController();
  var countryController = TextEditingController();
  var phoneController = TextEditingController();
  var nationalityController = TextEditingController();

  int gender = 0;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    dobController.dispose();
    countryController.dispose();
    phoneController.dispose();
    nationalityController.dispose();
    super.dispose();
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.popScreen(context);}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.tick_circle, color: Colours.black,)))];
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
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: CustomImageView(url: 'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=', height: 90, width: 90,),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 65, left: 65),
                    child: const ImagePickerButton(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: CustomTextField(text: "Your Name", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: nameController, textInputType: TextInputType.text),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Email ID", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: emailController, textInputType: TextInputType.emailAddress),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Phone Number", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: phoneController, textInputType: TextInputType.phone),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Date of Birth", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: dobController, textInputType: TextInputType.datetime),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Gender", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            // gender radio
            CustomRadioButton(itemName: "Male", radioValue: 0, onSelect: (int val){
              gender = val;
            }),
            CustomRadioButton(itemName: "Female", radioValue: 1, onSelect: (int val){
              gender = val;
            }),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Nationality", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: nationalityController, textInputType: TextInputType.datetime),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Country of Residence", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              child: CustomTextBox(textEditingController: countryController, textInputType: TextInputType.datetime),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: CustomTextField(text: "Languages Known", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Wrap(
              spacing: 6.0,
              children: [
                ChipWidget(chipName: 'English', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Hindi', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Tamil', showDelete: true, onDelete: () {},),
                ChipWidget(chipName: 'Telugu', showDelete: true, onDelete: () {},),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 