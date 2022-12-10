// ignore_for_file: file_names
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';

class SearchScreen extends BasePageScreen {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreenState<SearchScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "Search";
  }

  @override
  List<Widget>? getActions() {
    return [];
  }
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }
  
  @override
  Widget body() {
    return const Center(
      child: Text('Search Screen - Will be used to search all people irrespective of gender, skills, location, language, experience etc. will have filters to sort'),
    );
  }
} 
