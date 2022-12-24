// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/profile/screens/OtherProfileInfoTabScreen.dart';
import 'package:code_buddy/features/profile/screens/OtherProfilePostsTabScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/LocalImageView.dart';
import 'package:code_buddy/widgets/ProfileInfoWidget.dart';
import 'package:flutter/material.dart';

class OthersProfileScreen extends BasePageScreen {
  const OthersProfileScreen({super.key});

  @override
  State<OthersProfileScreen> createState() => _OthersProfileScreenState();
}

class _OthersProfileScreenState extends BaseScreenState<OthersProfileScreen> with BaseScreen, TickerProviderStateMixin {
  
  late TabController tabController;
  
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  String appBarTitle() {
    return "Harry Brooks";
  }
  
  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  bool showAppBar = true;

  @override
  List<Widget>? getActions() {
    return [];
  }
  
  @override
  Widget body() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colours.white,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Column(
                children:  [
                  const ProfileInfoWidget(),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LocalImageView(path: "assets/github.png", width: 35, height: 35),
                      LocalImageView(path: "assets/gmail.png", width: 35, height: 35),
                      LocalImageView(path: "assets/linkedin.png", width: 35, height: 35),
                      LocalImageView(path: "assets/phone.png", width: 35, height: 35),
                    ],
                  ),
                ],
              ),
            ),
            expandedHeight: 420.0,
            bottom: TabBar(
              indicatorColor: Colours.blueAccent,
              labelColor: Colours.blueAccent,
              isScrollable: false,
              tabs: [
                Tab(
                  child: CustomTextField(text: "Info", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
                ),
                Tab(
                  child: CustomTextField(text: "Posts", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
                ),
              ],
              controller: tabController,
            ),
          )
        ];
      },
      body: TabBarView(
        controller: tabController,
        children: const [
          OtherProfileInfoTabScreen(),
          OtherProfilePostsTabScreen(),
        ],
      ),
    );
  }
} 