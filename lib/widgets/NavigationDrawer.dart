// ignore_for_file: file_names
import 'package:code_buddy/features/community/screens/CommunityScreen.dart';
import 'package:code_buddy/features/events/screens/EventsListingScreen.dart';
import 'package:code_buddy/features/marketplace/screens/MarketplaceScreen.dart';
import 'package:code_buddy/screens/FAQScreen.dart';
import 'package:code_buddy/screens/MyBookmarksScreen.dart';
import 'package:code_buddy/screens/SettingsScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/MenuListItem.dart';
import 'package:code_buddy/widgets/ProfileHeaderView.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({super.key});

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colours.white,
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 7),
            child: const ProfileHeaderView(),
          ),
          const SizedBox(
            height: 40,
          ),
          MenuListItem(itemName: 'Community', icon: Iconsax.people, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const CommunityScreen());
          },),
          MenuListItem(itemName: 'Bookmarks', icon: Iconsax.bookmark, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const MyBookmarksScreen());
          },),
          MenuListItem(itemName: 'Events', icon: Iconsax.calendar, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const EventsListingScreen());
          },),
          MenuListItem(itemName: 'Marketplace', icon: Iconsax.shop, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const MarketplaceScreen());
          },),
          MenuListItem(itemName: 'Feedback', icon: Iconsax.message_question, onTap: () {
            StackNavigator.instance.popScreen(context);
          },),
          MenuListItem(itemName: 'FAQs', icon: Icons.question_answer_outlined, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const FAQScreen());
          },),
          MenuListItem(itemName: 'Settings', icon: Iconsax.setting, onTap: () {
            StackNavigator.instance.popScreen(context);
            StackNavigator.instance.sendToScreen(context, const SettingsScreen());
          },),
        ],
      ),
    );
  }
}