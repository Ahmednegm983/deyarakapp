import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forget_pass_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(right: querywidth / 15),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {},
          child: Text('Forgot Password ?', style: myStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
