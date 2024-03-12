import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class roof_animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Container(
      child: Animate(
          effects: [
            MoveEffect(
                begin: Offset(0, -queryheight),
                duration: Duration(seconds: 5),
                delay: Duration(seconds: 0))
          ],
          child: Container(
            margin: EdgeInsets.only(top: queryheight / 5),
            color: Colors.transparent,
            child: Image.asset('assets/pics/roof.png'),
          )),
    );
  }
}
