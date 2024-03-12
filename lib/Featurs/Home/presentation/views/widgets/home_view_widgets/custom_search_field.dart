import 'package:deyarakapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      shadowColor: Colors.grey,
      elevation: 3,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Where to?',
          labelStyle:
              const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          hintText: 'Any where ,Any week',
          focusedBorder: Styles.borderstyle,
          enabledBorder: Styles.borderstyle,
          prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 32,
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
