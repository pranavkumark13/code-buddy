// ignore_for_file: file_names, avoid_print
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:code_buddy/features/connect/screens/ConnectScreen.dart';
import 'package:code_buddy/features/feed/screens/FeedsScreen.dart';
import 'package:code_buddy/features/message/screens/ChatScreen.dart';
import 'package:code_buddy/features/notifications/screens/NotificationsScreen.dart';
import 'package:code_buddy/features/search/screens/SearchScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/NavigationDrawer.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../utils/Colours.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;
  List<IconData> icons = [
    Iconsax.story,
    EvaIcons.search,
    EvaIcons.compassOutline,
    EvaIcons.messageCircleOutline
  ];
  List<Widget> screens = [
    const FeedsScreen(),
    const SearchScreen(),
    const ConnectScreen(),
    const ChatScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colours.black),
        backgroundColor: Colours.white,
        elevation: 0.0,
        title: getAppBarTitle(_bottomNavIndex),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CustomIcon(
                iconData: Iconsax.notification,
                onTap: () {
                  StackNavigator.instance
                      .sendToScreen(context, const NotificationsScreen());
                }),
          ),
        ],
      ),
      body: Center(
        child: screens.elementAt(_bottomNavIndex),
      ),
      drawer: const NavigationDrawer(),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: _bottomNavIndex,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: Colours.white,
        activeColor: Colours.blueAccent,
        inactiveColor: Colors.black54,
        gapWidth: 10,
      ),
    );
  }

  Widget? getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return CustomTextField(
            text: "Feeds",
            textColor: Colours.black,
            fontSize: 16,
            fontWeight: FontWeight.w600);
      case 1:
        return CustomTextField(
            text: "Search",
            textColor: Colours.black,
            fontSize: 16,
            fontWeight: FontWeight.w600);
      case 2:
        return CustomTextField(
            text: "Connect",
            textColor: Colours.black,
            fontSize: 16,
            fontWeight: FontWeight.w600);
      case 3:
        return CustomTextField(
            text: "Chats",
            textColor: Colours.black,
            fontSize: 16,
            fontWeight: FontWeight.w600);
      default:
        print("Index not found");
        return null;
    }
  }
}
