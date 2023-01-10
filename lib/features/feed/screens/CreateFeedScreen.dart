// ignore_for_file: file_names
import 'package:code_buddy/utils/AppUtils.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CreateFeedArea.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/PostTypeOptionItem.dart';
import 'package:code_buddy/widgets/Separator.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateFeedScreen extends StatefulWidget {
  const CreateFeedScreen({super.key});

  @override
  State<CreateFeedScreen> createState() => _CreateFeedScreenState();
}

class _CreateFeedScreenState extends State<CreateFeedScreen> {
  var postController = TextEditingController();
  bool showBottomActionBar = true;
  var actions = [
    AppUtils.instance.appBarActionElement(() {}, "Post"),
  ];

  List<Widget> items = [
    PostTypeOptionItem(
        label: "Add a Photo",
        description:
            "Selecting this option allows you to add a photo to your post.",
        icon: Icons.photo_camera_back_outlined,
        onTap: () {}),
    PostTypeOptionItem(
        label: "Add a Video",
        description:
            "Selecting this option allows you to add a video to your post.",
        icon: Iconsax.video_circle,
        onTap: () {}),
    PostTypeOptionItem(
        label: "Add a Blog",
        description: "Selecting this option allows you to write a blog.",
        icon: Iconsax.note,
        onTap: () {}),
    PostTypeOptionItem(
        label: "Lookout for collaboration",
        description:
            "Selecting this option allows you create a post to look for collaboration.",
        icon: Icons.people,
        onTap: () {}),
    PostTypeOptionItem(
        label: "Add a Poll",
        description: "Selecting this option allows you to create a poll.",
        icon: Icons.poll_outlined,
        onTap: () {}),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      appBar: AppUtils.instance.appBar(context, "Create a Feed", actions),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreateFeedArea(textEditingController: postController),
            // Handle post type wise logic here
            Row(
              children: [
                CustomIcon(iconData: Iconsax.location),
                Separator(
                  width: 4,
                ),
                CustomTextField(
                    text: "Add Location",
                    textColor: Colours.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Visibility(
        visible: showBottomActionBar ? true : false,
        child: SizedBox(
          height: 50,
          child: Row(
            children: [
              Separator(
                width: 13,
              ),
              CustomIcon(
                  iconData: Icons.photo_camera_back_outlined, onTap: () {}),
              Separator(
                width: 13,
              ),
              CustomIcon(iconData: Iconsax.video_circle, onTap: () {}),
              Separator(
                width: 13,
              ),
              CustomIcon(iconData: Iconsax.note, onTap: () {}),
              Separator(
                width: 13,
              ),
              CustomIcon(iconData: Icons.people, onTap: () {}),
              Separator(
                width: 13,
              ),
              CustomIcon(iconData: Icons.poll_outlined, onTap: () {}),
              Separator(
                width: 13,
              ),
              CustomIcon(
                  iconData: Icons.more_horiz,
                  onTap: () {
                    if (showBottomActionBar) {
                      AppUtils.instance.showBottomSheet(context, items);
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
