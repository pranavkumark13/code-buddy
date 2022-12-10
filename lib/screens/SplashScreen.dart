// ignore_for_file: file_names
import 'package:code_buddy/screens/HomeScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class SplashScreen extends BasePageScreen {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseScreenState<SplashScreen> with BaseScreen {

  @override
  void initState() {
    Future.delayed(
      const Duration(
        seconds: 5,
      ),
      () async {
        // ignore: lines_longer_than_80_chars
        StackNavigator.instance.popScreenFromStack(context);
        StackNavigator.instance.sendToScreen(context, const HomeScreen());
      },
    );
    super.initState();
  }
      
  @override
  String appBarTitle() {
    return "";
  }
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return  const Center(
      child: Text('Developer Community'),
    );
  }
  
  @override
  List<Widget>? getActions() {
    return [];
  }
} 