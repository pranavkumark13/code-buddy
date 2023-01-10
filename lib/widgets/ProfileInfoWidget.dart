// ignore_for_file: file_names
import 'package:code_buddy/screens/MyFollowersScreen.dart';
import 'package:code_buddy/screens/MyFollowingScreen.dart';
import 'package:code_buddy/screens/ProfilePictureDetailScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/Separator.dart';
import 'package:flutter/material.dart';

class ProfileInfoWidget extends StatefulWidget {
  const ProfileInfoWidget({super.key});

  @override
  State<ProfileInfoWidget> createState() => _ProfileInfoWidgetState();
}

class _ProfileInfoWidgetState extends State<ProfileInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Separator(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            StackNavigator.instance.sendToScreen(
                context,
                ProfilePictureDetailScreen(
                  url:
                      "https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=",
                ));
          },
          child: Container(
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: CustomImageView(
                url:
                    'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=',
                height: 90,
                width: 90,
              ),
            ),
          ),
        ),
        Separator(
          height: 10,
        ),
        Center(
          child: Column(
            children: [
              CustomTextField(
                  text: 'Harry Brooks',
                  textColor: Colours.blueAccent,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
              Separator(
                height: 2,
              ),
              CustomTextField(
                  text: 'Android Developer',
                  textColor: Colours.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              Separator(
                height: 15,
              ),
              CustomTextField(
                  text: '+ Follow',
                  textColor: Colours.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              Separator(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CustomTextField(
                          text: "10",
                          textColor: Colours.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      CustomTextField(
                          text: "Posts",
                          textColor: Colours.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      StackNavigator.instance
                          .sendToScreen(context, const MyFollowersScreen());
                    },
                    child: Column(
                      children: [
                        CustomTextField(
                            text: "220",
                            textColor: Colours.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        CustomTextField(
                            text: "Followers",
                            textColor: Colours.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      StackNavigator.instance
                          .sendToScreen(context, const MyFollowingScreen());
                    },
                    child: Column(
                      children: [
                        CustomTextField(
                            text: "220",
                            textColor: Colours.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        CustomTextField(
                            text: "Following",
                            textColor: Colours.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
