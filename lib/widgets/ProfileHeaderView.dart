// ignore_for_file: file_names
import 'package:code_buddy/features/profile/screens/MyProfileScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:flutter/material.dart';

class ProfileHeaderView extends StatefulWidget {
  const ProfileHeaderView({super.key});

  @override
  State<ProfileHeaderView> createState() => _ProfileHeaderViewState();
}

class _ProfileHeaderViewState extends State<ProfileHeaderView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        StackNavigator.instance.popScreen(context);
        StackNavigator.instance.sendToScreen(context, const MyProfileScreen());
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: CustomImageView(url: 'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=', height: 65, width: 65,),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(text: 'Pranav Kumar K', textColor: Colours.blueAccent, fontSize: 16, fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(text: 'iOS Developer', textColor: Colours.grey, fontSize: 14, fontWeight: FontWeight.normal),
              ],
            ),
          ),
        ],
      ),
    );
  }
}