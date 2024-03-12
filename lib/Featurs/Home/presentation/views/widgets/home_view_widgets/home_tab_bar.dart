import 'package:deyarakapp/constants.dart';
import 'package:flutter/material.dart';

class HomeTabBar extends StatefulWidget {
  final TabController tabController;
  const HomeTabBar({super.key, required this.tabController});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * .1,
      child: TabBar(
          isScrollable: true,
          indicatorColor: kprimarycolor,
          labelColor: kprimarycolor,
          unselectedLabelColor: Colors.grey,
          controller: widget.tabController,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.apartment,
              ),
              text: 'Apartment ',
            ),
            Tab(
              icon: Icon(
                Icons.home,
              ),
              text: 'Family Home',
            ),
            Tab(
              icon: Icon(
                Icons.chair,
              ),
              text: 'Furnitured Apartment',
            ),
            Tab(
              icon: Icon(
                Icons.villa,
              ),
              text: 'Villa',
            )
          ]),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
