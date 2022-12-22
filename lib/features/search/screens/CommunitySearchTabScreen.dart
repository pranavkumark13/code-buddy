// ignore_for_file: file_names, must_be_immutable
import 'package:code_buddy/widgets/CommunitySearchItem.dart';
import 'package:flutter/material.dart';
class CommunitySearchTabScreen extends StatelessWidget {
  const CommunitySearchTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 20,
      itemBuilder: (context, index) {
        return const CommunitySearchItem();
      },
    );
  }
}