// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CreateFeedArea.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/PostTypeOptionItem.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CreateFeedScreen extends BasePageScreen {
  const CreateFeedScreen({super.key});

  @override
  State<CreateFeedScreen> createState() => _CreateFeedScreenState();
}

class _CreateFeedScreenState extends BaseScreenState<CreateFeedScreen> with BaseScreen {
  
  var postController = TextEditingController();
  
  @override
  String appBarTitle() {
    return "Create a Post";
  }

  @override
  List<Widget>? getActions() {
    return [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(right: 15, top: 15),
          child: CustomTextField(text: "Post", textColor: Colours.blueAccent, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),

    ];
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
          CreateFeedArea(textEditingController: postController),
          PostTypeOptionItem(label: "Add a Photo", description: "Selecting this option allows you to add a photo to your post.",icon: Icons.photo_camera_back_outlined, onTap: () {}),
          PostTypeOptionItem(label: "Add a Video", description: "Selecting this option allows you to add a video to your post." ,icon: Iconsax.video_circle, onTap: () {}),
          PostTypeOptionItem(label: "Add a Blog", description: "Selecting this option allows you to write a blog." ,icon: Iconsax.note, onTap: () {}),
          PostTypeOptionItem(label: "Lookout for collaboration", description: "Selecting this option allows you create a post to look for collaboration." ,icon: Icons.people, onTap: () {}),
          PostTypeOptionItem(label: "Add a Poll", description: "Selecting this option allows you to create a poll." ,icon: Icons.poll_outlined, onTap: () {}),
        ],
      ),
    );
  }
} 