import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Personalinformationitem extends StatelessWidget {
  String base;
  String hint;
  String last;

  Personalinformationitem(
      {super.key, required this.base, required this.hint, required this.last});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.045),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    base,
                    style: Fonts.textstyle16,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    hint,
                    style: Fonts.textstyle18.copyWith(color: Color(0xff6B6767)),
                  ),
                ],
              ),
              Spacer(),
              Text(
                last,
                style: Fonts.textstyle16,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
