// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class EditPaymentMethodsScreen extends BasePageScreen {
  const EditPaymentMethodsScreen({super.key});

  @override
  State<EditPaymentMethodsScreen> createState() => _EditPaymentMethodsScreenState();
}

class _EditPaymentMethodsScreenState extends BaseScreenState<EditPaymentMethodsScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Payment Methods";
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return Container();
  }
  
  @override
  List<Widget>? getActions() {
    return [];
  }
} 