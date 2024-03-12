import 'package:deyarakapp/Featurs/register_screen/widget/TextFieldInput.dart';
import 'package:deyarakapp/Featurs/register_screen/widget/buttom.dart';
import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class registerView extends StatelessWidget {
  const registerView({super.key});
  @override
  Widget build(BuildContext context) {
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    // TODO: implement build
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Image.asset('assets/pics/houseSearch.png'),
          Container(
            padding: EdgeInsets.only(
                top: queryheight / 40, bottom: queryheight / 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xffFF725E), Color(0xffDF8256)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Column(
              children: [
                TextFieldInputt(
                  text: 'FirstName',
                  icon: Icons.person,
                  function: () {},
                  colorr: Colors.white,
                  formatter: [],
                  password: false,
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
                TextFieldInputt(
                  text: 'LastName',
                  icon: Icons.person,
                  function: () {},
                  colorr: Colors.white,
                  formatter: [],
                  password: false,
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
                TextFieldInputt(
                  text: 'Mobile Number',
                  icon: Icons.phone,
                  keybordtype: TextInputType.phone,
                  function: () {},
                  colorr: Colors.white,
                  formatter: [FilteringTextInputFormatter.digitsOnly],
                  password: false,
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
                TextFieldInputt(
                  text: 'Email',
                  icon: Icons.mail,
                  function: () {},
                  colorr: Colors.white,
                  formatter: [],
                  keybordtype: TextInputType.emailAddress,
                  password: false,
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
                TextFieldInputt(
                  text: 'Password',
                  icon: Icons.lock,
                  function: () {},
                  colorr: Colors.white,
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
                TextFieldInputt(
                  text: 'Confirm Password',
                  icon: Icons.lock,
                  function: () {},
                  colorr: Colors.white,
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
                  height: queryheight / 20,
                ),
                Buttonn(
                  text: 'Sign UP',
                  ontap: () {},
                  txtcolorr: ColorMain,
                  colorr: Colors.white,
                  raduis: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
