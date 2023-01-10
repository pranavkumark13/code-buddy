// ignore_for_file: file_names, overridden_fields
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomIcon.dart';
import 'package:code_buddy/widgets/Separator.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends BasePageScreen {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends BaseScreenState<NotificationsScreen>
    with BaseScreen {
  @override
  String appBarTitle() {
    return "Notifications";
  }

  @override
  bool showAppBar = true;

  @override
  void onClickBackButton() {
    StackNavigator.instance.popScreen(context);
  }

  @override
  List<Widget>? getActions() {
    return [
      CustomIcon(
        iconData: Icons.clear_all,
        onTap: () {},
      ),
      Separator(
        width: 15,
      ),
      CustomIcon(
        iconData: Icons.read_more,
        onTap: () {},
      ),
      Separator(
        width: 10,
      ),
    ];
  }

  @override
  Widget body() {
    return Container();
  }
}
