import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttonn extends StatelessWidget {
  Buttonn(
      {required this.text,
      required this.ontap,
      required this.raduis,
      required this.colorr,
      required this.txtcolorr});
  String? text;
  Function()? ontap;
  double? raduis;
  Color? colorr;
  Color? txtcolorr;
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(left: querywidth / 5, right: querywidth / 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(raduis!), color: colorr),
        height: queryheight / 20,
        child: Center(
            child: Text(
          '$text',
          style: myStyle(color: txtcolorr, size: querywidth / 20),
        )),
      ),
    );
  }
}
