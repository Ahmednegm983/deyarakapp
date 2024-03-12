import 'package:deyarakapp/Featurs/register_screen/widget/buttom.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class welcome_page extends StatelessWidget {
  const welcome_page({super.key});
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.khome);
                },
                icon: Icon(
                  Icons.close,
                  size: querywidth / 6,
                )),
          ),
          Image.asset('assets/pics/Housesearchingcuate.png'),
          SizedBox(
            height: queryheight / 15,
          ),
          Container(
            margin:
                EdgeInsets.only(left: querywidth / 5, right: querywidth / 5),
            child: OutlinedButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kregister);
              },
              child: Text(
                'Sign UP',
                style: myStyle(color: ColorMain, size: querywidth / 20),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 2.0, color: ColorMain),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
          ),
          SizedBox(
            height: queryheight / 15,
          ),
          Buttonn(
              text: 'Sign IN',
              ontap: () {
                GoRouter.of(context).push(AppRouter.klogin);
              },
              raduis: 35,
              colorr: ColorMain,
              txtcolorr: Colors.white)
        ],
      ),
    );
  }
}
