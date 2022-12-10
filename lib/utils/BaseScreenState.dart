// ignore_for_file: file_names
import 'package:flutter/material.dart';

abstract class BasePageScreen extends StatefulWidget {
  const BasePageScreen({Key? key}) : super(key: key);
}

abstract class BaseScreenState<Page extends BasePageScreen> extends State<Page> {

  bool isBack = true;

  bool showAppBar = false;

  String appBarTitle();

  void onClickBackButton();

  void isBackButton(bool isBack) {
    isBack = isBack;
  }
  
}