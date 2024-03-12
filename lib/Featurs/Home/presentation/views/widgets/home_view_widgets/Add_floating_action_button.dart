import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/BottomNavigationViews/add_product.dart';
import 'package:flutter/material.dart';

class AddFloatingActionButton extends StatelessWidget {
  const AddFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kprimarycolor,
      onPressed: () {},
      child: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProductPage(),
              ));
        },
        icon: const Icon(
          Icons.add,
        ),
        iconSize: 40,
      ),
    );
  }
}
