// ignore_for_file: file_names
import 'package:code_buddy/features/search/screens/CommunitySearchTabScreen.dart';
import 'package:code_buddy/features/search/screens/PeopleSearchTabScreen.dart';
import 'package:code_buddy/utils/Colours.dart';
import 'package:code_buddy/utils/StackNavigator.dart';
import 'package:code_buddy/utils/BaseScreen.dart';
import 'package:code_buddy/utils/BaseScreenState.dart';
import 'package:code_buddy/widgets/CustomTextBox.dart';
import 'package:code_buddy/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class SearchScreen extends BasePageScreen {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends BaseScreenState<SearchScreen> with BaseScreen, TickerProviderStateMixin {
  
  var searchController = TextEditingController();

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  String appBarTitle() {
    return "Search";
  }

  @override
  List<Widget>? getActions() {
    return [];
  }
  
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
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: Colours.white,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: CustomTextBox(textEditingController: searchController, textInputType: TextInputType.text, hint: "Search"),
              ),
            ),
            expandedHeight: 120.0,
            bottom: TabBar(
              indicatorColor: Colours.blueAccent,
              labelColor: Colours.blueAccent,
              tabs: [
                Tab(
                  child: CustomTextField(text: "People", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
                ),
                Tab(
                  child: CustomTextField(text: "Community", textColor: Colours.black, fontSize: 14, fontWeight: FontWeight.w600,),
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
          PeopleSearchTabScreen(),
          CommunitySearchTabScreen(),    
        ],
      ),
    );
  }
} 
