import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class appbar extends StatelessWidget {
  var k;
  String text;
  double h;
  appbar({
    super.key,
    required this.k,
    required this.text,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * h,
        ),
        Text(
          text,
          style: Fonts.textstyle40,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
      ]),
    );
  }
}
