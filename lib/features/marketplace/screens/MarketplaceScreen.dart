// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class MarketplaceScreen extends BasePageScreen {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends BaseScreenState<MarketplaceScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Marketplace";
  }

  @override
  List<Widget>? getActions() {
    return [];
  }
  
  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return const Center(
      child: Text("Sale your apps"),
    );
  }
} 