import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class building_animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Container(
      child: Animate(
          effects: [
            MoveEffect(
                begin: Offset(-querywidth, 0),
                duration: Duration(seconds: 2),
                delay: Duration(seconds: 3))
          ],
          child: Container(
            margin: EdgeInsets.only(top: queryheight / 5),
            color: Colors.transparent,
            child: Image.asset('assets/pics/building.png'),
          )),
    );
  }
}
