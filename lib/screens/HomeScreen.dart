// ignore_for_file: file_names, avoid_print
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:code_buddy/features/devhunt/screens/DeveloperHuntScreen.dart';
import 'package:code_buddy/features/feed/screens/FeedsScreen.dart';
import 'package:code_buddy/features/message/screens/ChatScreen.dart';
import 'package:code_buddy/features/notifications/screens/NotificationsScreen.dart';
import 'package:code_buddy/features/profile/screens/ProfileScreen.dart';
import 'package:code_buddy/features/search/screens/SearchScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/widgets/CustomImageView.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:code_buddy/widgets/NavigationDrawer.dart';
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
  List<IconData> icons = [Iconsax.story, Icons.search , Icons.code , Iconsax.message, Iconsax.notification];
  List<Widget> screens = [const FeedsScreen(), const SearchScreen() , const DeveloperHuntScreen(), const ChatScreen(), const NotificationsScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.white,
      endDrawer: const NavigationDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colours.black),
        backgroundColor: Colours.white,
        elevation: 0.0,
        title: getAppBarTitle(_bottomNavIndex),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyProfileScreen());
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10, top: 7),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: CustomImageView(url: 'https://media.istockphoto.com/id/1171169127/photo/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-isolated-on-gray.jpg?b=1&s=170667a&w=0&k=20&c=ErOpmNtGDfh1N5xs34-cycSdTso18EvFHEIpcBZC9w0=', height: 100, width: 100),
            ),
          ),
        ),
      ),
      body: Center(
          child: screens.elementAt(_bottomNavIndex),
      ),
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
    switch(index) {
      case 0:
        return CustomTextField(text: "Feeds", textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600);
      case 1:
        return CustomTextField(text: "Search", textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600);
      case 2:
        return CustomTextField(text: "Developer Hunt", textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600);
      case 3:
        return CustomTextField(text: "Chats", textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600);
      case 4:
        return CustomTextField(text: "Notifications", textColor: Colours.black, fontSize: 16, fontWeight: FontWeight.w600);
      default:
        print("Index not found");
        return null;
    }
  }
}
