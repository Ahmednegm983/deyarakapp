import 'package:deyarakapp/BottomNavigationViews/property_type_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PropertyTypeBar extends StatelessWidget {
  PropertyTypeBar({super.key});
  List<String> images = [
    'assets/images/building.png',
    'assets/images/furniture (1).png',
    'assets/images/home (1).png',
    'assets/images/villaa.png'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PropertyTypeItem(
                  propertyImg: images[0], propertyName: 'Apartment'),
              PropertyTypeItem(
                  propertyImg: images[1], propertyName: 'Furnished Apartment'),
              PropertyTypeItem(
                  propertyImg: images[2], propertyName: 'Family Home'),
              PropertyTypeItem(propertyImg: images[3], propertyName: 'Villa'),
            ],
          )),
    );
  }
}
