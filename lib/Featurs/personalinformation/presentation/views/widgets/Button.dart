import 'package:deyarakapp/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({
    super.key,
    required this.text,
    required this.ontap,
    required this.raduis,
    required this.colorr,
    required this.width,
    required this.marginn,
    required this.height,
  });
  String text;
  Function() ontap;
  double raduis;
  Color colorr;
  double width, marginn, height;

  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(raduis), color: colorr),
          height: queryheight / height,
          width: querywidth / width,
          child: Center(
              child: Text(
            text,
            style: myStyle(color: Colors.white, size: 19),
          )),
        ),
      ),
    );
  }
}
