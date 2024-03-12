import 'package:deyarakapp/Featurs/register_screen/widget/TextFieldInput.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/buttom.dart';
import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CreateAccount_Text.dart';
import 'forget_pass.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: ListView(physics: NeverScrollableScrollPhysics(), children: [
      Image.asset(
        'assets/pics/houseSearch.png',
        height: queryheight / 2,
      ),
      Container(
        padding: EdgeInsets.only(top: queryheight / 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffFF725E), Color(0xffDF8256)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        height: querywidth,
        child: Column(
          children: [
            TextFieldInputt(
              text: 'UserName',
              colorr: Colors.white,
              function: () {},
              icon: Icons.person,
              formatter: [],
              password: false,
              validatee: (value) {
                if (value! == null || value!.isEmpty) {
                  return 'Username cannot be empty.';
                } else if (value.length < 4) {
                  return 'Username must be at least 4 characters long.';
                } else if (value.length > 20) {
                  return 'Username cannot be longer than 20 characters.';
                } else if (!RegExp(r"^[a-zA-Z0-9._]+$").hasMatch(value)) {
                  return 'Username can only contain letters, numbers, periods, and underscores.';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: queryheight / 45,
            ),
            TextFieldInputt(
              text: 'Password',
              colorr: Colors.white,
              function: () {},
              icon: Icons.lock,
              formatter: [],
              password: true,
              validatee: (value) {
                if (value == null || value.isEmpty) {
                  return 'Username cannot be empty.';
                } else if (value.length < 4) {
                  return 'Username must be at least 4 characters long.';
                } else if (value.length > 20) {
                  return 'Username cannot be longer than 20 characters.';
                } else if (!RegExp(r"^[a-zA-Z0-9._]+$").hasMatch(value)) {
                  return 'Username can only contain letters, numbers, periods, and underscores.';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: queryheight / 45,
            ),
            // forget_pass_text(),
            SizedBox(
              height: queryheight / 20,
            ),
            Buttonn(
              text: 'Login',
              ontap: () {},
              txtcolorr: ColorMain,
              colorr: Colors.white,
              raduis: 50,
            ),
            SizedBox(
              height: queryheight / 35,
            ),
            Create_account_text()
          ],
        ),
      )
    ]));
  }
}
