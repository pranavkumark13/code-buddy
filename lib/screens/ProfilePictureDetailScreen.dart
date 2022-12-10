// ignore_for_file: file_names, must_be_immutable, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:flutter/material.dart';

class ProfilePictureDetailScreen extends BasePageScreen {
  String url;
  ProfilePictureDetailScreen({super.key, required this.url});

  @override
  State<ProfilePictureDetailScreen> createState() => _ProfilePictureDetailScreenState();
}

class _ProfilePictureDetailScreenState extends BaseScreenState<ProfilePictureDetailScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "";
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  List<Widget>? getActions() {
    return [];
  }
  
  @override
  Widget body() {
    return Center(
      child: CustomImageView(url: widget.url, width: MediaQuery.of(context).size.width, height: 400),
    );
  }
} 