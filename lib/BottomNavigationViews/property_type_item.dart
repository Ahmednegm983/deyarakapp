import 'package:flutter/material.dart';

class PropertyTypeItem extends StatelessWidget {
  const PropertyTypeItem({
    super.key,
    required this.propertyImg,
    required this.propertyName,
  });
  final String propertyImg;
  final String propertyName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          propertyImg,
          color: Colors.grey,
          width: MediaQuery.of(context).size.width * .13,
          height: MediaQuery.of(context).size.width * .1,
        ),
        Text(
          propertyName,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
