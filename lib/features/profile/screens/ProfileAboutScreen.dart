// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/profile/screens/EditProfileScreen.dart';
import 'package:code_buddy/screens/ProfilePictureDetailScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/ChipWidget.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/CustomTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileAboutScreen extends BasePageScreen {
  const ProfileAboutScreen({super.key});

  @override
  State<ProfileAboutScreen> createState() => _ProfileAboutScreenState();
}

class _ProfileAboutScreenState extends BaseScreenState<ProfileAboutScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "About Me";
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.sendToScreen(context, const EditProfileScreen());}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.edit, color: Colours.black,)))];
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
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                StackNavigator.instance.sendToScreen(context, ProfilePictureDetailScreen(url: "https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0="));
              },
              child: Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: CustomImageView(url: 'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=', height: 90, width: 90,),
                ),
              ),
            ),
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
    );
  }
} 
