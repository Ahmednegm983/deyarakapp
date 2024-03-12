import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/property_item.dart';
import 'package:flutter/material.dart';

class WishlistView extends StatelessWidget {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 12,
            top: 24,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SafeArea(
                child: Text(
              'Wishlist',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            )),
          ),
        ),
        Expanded(
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              itemBuilder: (context, index) {
                return const PropertyItem();
              },
            ),
          ),
        )
      ],
    ));
  }
}
