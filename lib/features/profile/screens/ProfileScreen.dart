// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/features/community/screens/CommunityScreen.dart';
import 'package:code_buddy/features/events/screens/EventsListingScreen.dart';
import 'package:code_buddy/features/marketplace/screens/MarketplaceScreen.dart';
import 'package:code_buddy/features/profile/screens/MyProfessionalProfileScreen.dart';
import 'package:code_buddy/features/profile/screens/ProfileAboutScreen.dart';
import 'package:code_buddy/screens/MyBookmarksScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/MenuListItem.dart';
import 'package:code_buddy/widgets/ProfileHeaderView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProfileScreen extends BasePageScreen {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends BaseScreenState<MyProfileScreen> with BaseScreen {
  
  @override
  String appBarTitle() {
    return "";
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
  return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 7),
            child: const ProfileHeaderView(),
          ),
          const SizedBox(
            height: 40,
          ),
          MenuListItem(itemName: 'About Me', icon: Iconsax.user, onTap: () {
            StackNavigator.instance.sendToScreen(context, const ProfileAboutScreen());
          },),
          MenuListItem(itemName: 'My Professional Profile', icon: Iconsax.code, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyProfessionalProfileScreen());
          },),
          MenuListItem(itemName: 'Community', icon: Iconsax.people, onTap: () {
            StackNavigator.instance.sendToScreen(context, const CommunityScreen());
          },),
          MenuListItem(itemName: 'Bookmarks', icon: Iconsax.bookmark, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MyBookmarksScreen());
          },),
          MenuListItem(itemName: 'Events', icon: Iconsax.calendar, onTap: () {
            StackNavigator.instance.sendToScreen(context, const EventsListingScreen());
          },),
          MenuListItem(itemName: 'Marketplace', icon: Iconsax.shop, onTap: () {
            StackNavigator.instance.sendToScreen(context, const MarketplaceScreen());
          },),
        ],
      ),
    );
  }
} 