// ignore_for_file: file_names
import 'package:code_buddy/features/community/screens/CommunityScreen.dart';
import 'package:code_buddy/features/events/screens/EventsListingScreen.dart';
import 'package:code_buddy/features/marketplace/screens/MarketplaceScreen.dart';
import 'package:code_buddy/screens/FAQScreen.dart';
import 'package:code_buddy/screens/MyBookmarksScreen.dart';
import 'package:code_buddy/screens/SettingsScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/DrawerListItem.dart';
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
            height: 50,
          ),
          DrawerListItem(itemName: 'Community', icon: Iconsax.people, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const CommunityScreen());
          }),
          DrawerListItem(itemName: 'Bookmarks', icon: Iconsax.bookmark, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const MyBookmarksScreen());
          }),
          DrawerListItem(itemName: 'Events', icon: Iconsax.calendar, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const EventsListingScreen());
          }),
          DrawerListItem(itemName: 'Marketplace', icon: Iconsax.shop, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const MarketplaceScreen());
          }),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 10, right: 10),
            height: 1,
            color: Colours.lightGrey,
          ),
          const SizedBox(
            height: 30,
          ),
          DrawerListItem(itemName: 'Feedback', icon: Iconsax.message_question, onTap: () {}),
          DrawerListItem(itemName: 'FAQs', icon: Icons.question_answer_outlined, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const FAQScreen());
          }),
          DrawerListItem(itemName: 'Settings', icon: Iconsax.setting, onTap: () {
            StackNavigator.instance.popScreenFromStack(context);
            StackNavigator.instance.sendToScreen(context, const SettingsScreen());
          }),
        ],
      ),
    );
  }
}