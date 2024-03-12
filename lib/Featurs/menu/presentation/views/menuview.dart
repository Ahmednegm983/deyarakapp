import 'package:deyarakapp/Featurs/menu/presentation/views/widgets/menuwidget.dart';

import 'package:flutter/material.dart';

class MenueView extends StatelessWidget {
  const MenueView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: menuwidget(),
      ),
    );
  }
}
