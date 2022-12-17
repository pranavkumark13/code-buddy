// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/ProfileInfoWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProfileScreen extends BasePageScreen {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends BaseScreenState<MyProfileScreen> with BaseScreen, TickerProviderStateMixin {
  
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  String appBarTitle() {
    return "My Profile";
  }

  @override
  List<Widget>? getActions() {
    return [
      Container(
        margin: const EdgeInsets.only(right: 10),
        child: GestureDetector(
          child: CustomIcon(iconData: Iconsax.edit, onTap: () {},),
        ),
      ),
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
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            pinned: false,
            backgroundColor: Colours.white,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Column(
                children: const [
                  ProfileInfoWidget(),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            expandedHeight: 300.0,
            bottom: TabBar(
              indicatorColor: Colours.blueAccent,
              labelColor: Colours.blueAccent,
              tabs: [
                Tab(
                  child: CustomTextField(text: "Info", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
                ),
                Tab(
                  child: CustomTextField(text: "Posts", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
                ),
                Tab(
                  child: CustomTextField(text: "Bookmarks", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
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
          Center(child: Text('Info')),
          Center(child: Text('Posts')),
          Center(child: Text('Bookmarks')),
        ],
      ),
    );
  }
} 


/*

SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileInfoWidget(),
          const SizedBox(
            height: 15,
          ),
          TabBar(
              controller: tabController,
              labelColor: Colours.blueAccent,
              isScrollable: false,
              tabs: const [
                Tab(
                  child: Text(
                    "Info",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Posts",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Bookmarks",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
        ],
      ),
    );

*/