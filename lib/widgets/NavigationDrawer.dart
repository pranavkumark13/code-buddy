// ignore_for_file: file_names
import 'package:code_buddy/features/community/screens/CommunityScreen.dart';
import 'package:code_buddy/features/events/screens/EventsListingScreen.dart';
import 'package:code_buddy/features/marketplace/screens/MarketplaceScreen.dart';
import 'package:code_buddy/screens/SettingsScreen.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/widgets/DrawerListItem.dart';
import 'package:code_buddy/widgets/ProfileHeaderView.dart';
import 'package:code_buddy/widgets/Separator.dart';
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
          Separator(
            height: 55,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, top: 7),
            child: const ProfileHeaderView(),
          ),
          Separator(
            height: 40,
          ),
          DrawerListItem(
            itemName: 'Community',
            icon: Iconsax.people,
            onTap: () {
              StackNavigator.instance.popScreen(context);
              StackNavigator.instance
                  .sendToScreen(context, const CommunityScreen());
            },
          ),
          DrawerListItem(
            itemName: 'Events',
            icon: Iconsax.calendar,
            onTap: () {
              StackNavigator.instance.popScreen(context);
              StackNavigator.instance
                  .sendToScreen(context, const EventsListingScreen());
            },
          ),
          DrawerListItem(
            itemName: 'Marketplace',
            icon: Iconsax.shop,
            onTap: () {
              StackNavigator.instance.popScreen(context);
              StackNavigator.instance
                  .sendToScreen(context, const MarketplaceScreen());
            },
          ),
          Separator(
            height: 20,
          ),
          Divider(
            color: Colours.grey,
            height: 1,
          ),
          Separator(
            height: 15,
          ),
          DrawerListItem(
            itemName: 'Settings',
            icon: Iconsax.setting,
            onTap: () {
              StackNavigator.instance.popScreen(context);
              StackNavigator.instance
                  .sendToScreen(context, const SettingsScreen());
            },
          ),
        ],
      ),
    );
  }
}
