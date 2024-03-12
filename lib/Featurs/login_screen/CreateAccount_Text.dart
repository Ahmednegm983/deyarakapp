import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

class Create_account_text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text('Dont have an account ?',
          style: myStyle(color: Colors.white, size: querywidth / 25)),
      GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kregister);
        },
        child: Text(
          'Register now',
          style: myStyle(size: querywidth / 25, color: Colors.white),
        ),
      )
    ]);
  }
}
