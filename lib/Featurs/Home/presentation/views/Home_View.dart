import 'package:deyarakapp/BottomNavigationViews/map_view.dart';

import 'package:deyarakapp/BottomNavigationViews/wishlist_view.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/home_view_body.dart';
import 'package:deyarakapp/Featurs/menu/presentation/views/menuview.dart';
import 'package:deyarakapp/constants.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  int currentindex = 0;

  List<Widget> pages = const <Widget>[
    HomeViewBody(),
    WishlistView(),
    MapPage(),
    MenueView()
  ];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 30,
              offset: const Offset(8, 20)),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentindex = value;
                });
              },
              backgroundColor: const Color.fromARGB(255, 203, 203, 203),
              selectedItemColor: const Color.fromARGB(255, 214, 84, 78),
              unselectedItemColor: Colors.black,
              currentIndex: currentindex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Iconsax.search_normal,
                      size: kiconsize,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Iconsax.heart,
                      size: kiconsize,
                    ),
                    label: 'Wishlist'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Iconsax.map,
                      size: kiconsize,
                    ),
                    label: 'Map'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.more_vert,
                      size: kiconsize,
                    ),
                    label: 'Menue'),
              ]),
        ),
      ),
      body: IndexedStack(index: currentindex, children: pages),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
