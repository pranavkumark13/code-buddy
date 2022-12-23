// ignore_for_file: file_names
import 'dart:io';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

mixin BaseScreen<Page extends BasePageScreen> on BaseScreenState<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Platform.isAndroid ?Colours.white : CupertinoColors.white,
      appBar: appBar(),
      body: Container(
        color: Platform.isAndroid ?Colours.white : CupertinoColors.white,
        child: body(),
      ),
    );
  }

  Widget body();

  List<Widget>? getActions();

  PreferredSizeWidget? appBar() {
    if(showAppBar){
      return AppBar(
        backgroundColor: Platform.isAndroid ?Colours.white : CupertinoColors.white,
        title: CustomTextField(text: appBarTitle(), textColor: Platform.isAndroid ?Colours.black : CupertinoColors.black, fontSize: 16, fontWeight: FontWeight.w600),
        centerTitle: true,
        elevation: 0.0,
        actions: getActions(),
        leading: isBack ? IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Platform.isAndroid ?Colours.black : CupertinoColors.black,
          ),
          onPressed: () {
            onClickBackButton();
          },
        ) : Container(),
      );
    }
    return null;
  }
}