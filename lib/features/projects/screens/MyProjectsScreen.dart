// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/projects/screens/CreateProjectScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProjectsScreen extends BasePageScreen {
  const MyProjectsScreen({super.key});

  @override
  State<MyProjectsScreen> createState() => _MyProjectsScreenState();
}

class _MyProjectsScreenState extends BaseScreenState<MyProjectsScreen> with BaseScreen,TickerProviderStateMixin   {
  
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  String appBarTitle() {
    return "My Projects";
  }

  @override
  bool showAppBar = true;
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  List<Widget>? getActions() {
    return [GestureDetector(onTap: () {StackNavigator.instance.sendToScreen(context, const CreateProjectScreen());}, child: Container(margin: const EdgeInsets.only(right: 12), child: const Icon(Iconsax.add_circle, color: Colours.black,)))];
  }
  
  @override
  Widget body() {
  return NestedScrollView(
      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(
            child: TabBar(
              controller: tabController,
              labelColor: Colours.blueAccent,
              isScrollable: false,
              tabs: const [
                Tab(
                  child: Text(
                    "Open",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Closed",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        controller: tabController,
        children: [
          Container(),
          Container()
        ],
      ),
    );
  }
} 