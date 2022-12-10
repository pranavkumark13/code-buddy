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
    if(Platform.isAndroid) {
      return Scaffold(
        backgroundColor: Colours.white,
        appBar: appBar(),
        body: Container(
          color: Colors.white,
          child: body(),
        ));
    }else {
      return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        navigationBar: cupertinoAppBar(),
        child: Container(
          color: CupertinoColors.white,
          child: body(),
        ),
      );
    }
  }

  Widget body();

  List<Widget>? getActions();

  PreferredSizeWidget? appBar() {
    if(showAppBar){
      return AppBar(
        backgroundColor: Colours.white,
        title: CustomTextField(text: appBarTitle(), textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600),
        centerTitle: true,
        elevation: 0.0,
        actions: getActions(),
        leading: isBack ? IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            onClickBackButton();
          },
        ) : Container(),
      );
    }
    return null;
  }

  ObstructingPreferredSizeWidget? cupertinoAppBar() {
    if(showAppBar) {
      return CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: CustomTextField(text: appBarTitle(), textColor: CupertinoColors.black, fontSize: 16, fontWeight: FontWeight.w600),
        previousPageTitle: "Back",
      );
    }
    return null;
  }
}