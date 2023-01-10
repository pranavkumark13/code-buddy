// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/community/screens/CreateCommunityScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CommunityScreen extends BasePageScreen {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends BaseScreenState<CommunityScreen>
    with BaseScreen, TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  String appBarTitle() {
    return "Community";
  }

  @override
  List<Widget>? getActions() {
    return [
      GestureDetector(
          onTap: () {
            StackNavigator.instance
                .sendToScreen(context, const CreateCommunityScreen());
          },
          child: Container(
              margin: const EdgeInsets.only(right: 12),
              child: Icon(
                Iconsax.add_circle,
                color: Colours.black,
              )))
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
                    "My Communities",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Other Communities",
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
          Container(),
        ],
      ),
    );
  }
}
