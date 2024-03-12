import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customtextfield extends StatelessWidget {
  String hinttext;
  String labeltext;

  customtextfield({super.key, required this.hinttext, required this.labeltext});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(14),
            ),
            hintText: hinttext,
            labelText: labeltext,
            labelStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
