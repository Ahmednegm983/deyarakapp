import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class profilemenuwidget extends StatelessWidget {
  String text;

  profilemenuwidget({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * .06,
          left: 16,
          right: 16,
          top: 25),
      child: Column(children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.asset(
                'assets/images/m.jpg',
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                text,
                style: Fonts.textstyle24,
              ),
              Text(
                'Show Profile',
                style: Fonts.textstyle14.copyWith(color: Color(0xff898989)),
              ),
            ]),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 32,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black),
            )),
          ),
        ),
      ]),
    );
  }
}
