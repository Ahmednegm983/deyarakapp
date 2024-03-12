import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/Add_floating_action_button.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/home_search_bar.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/home_tab_bar_view.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/home_tab_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(vsync: this, length: 4);
    return Scaffold(
      floatingActionButton: const AddFloatingActionButton(),
      body: Column(children: [
        const HomeSearchBar(),
        HomeTabBar(tabController: tabController),
        HomeTabBarView(
          tabController: tabController,
        ),
      ]),
    );
  }
}
