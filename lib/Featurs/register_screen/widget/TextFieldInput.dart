import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_utils/get_utils.dart';

class TextFieldInputt extends StatelessWidget {
  TextFieldInputt(
      {required this.text,
      required this.function,
      required this.icon,
      required this.formatter,
      this.keybordtype,
      required this.password,
      required this.validatee,
      required this.colorr});

  Color? colorr;
  String? errormessage;
  String? text;
  Function? function;
  IconData? icon;
  List<TextInputFormatter> formatter =
      []; // ex : FilteringTextInputFormatter.digitsOnly
  TextInputType? keybordtype; // ex : TextInputType.phone
  bool password; //ex true or false
  FormFieldValidator<String>
      validatee; //ex   if (value == null || value.isEmpty) {return 'Username cannot be empty.';

  @override
  Widget build(BuildContext context) {
    var textfieldscolor = colorr!;
    double radius = 15;
    var querywidth = MediaQuery.of(context).size.width;
    var queryheight = MediaQuery.of(context).size.height;

    return Container(
      height: queryheight / 12,
      color: Colors.transparent,
      padding: EdgeInsets.only(left: querywidth / 15, right: querywidth / 15),
      child: Form(
        child: TextFormField(
          validator: validatee,
          obscureText: password,
          inputFormatters: formatter,
          keyboardType: keybordtype,
          textAlignVertical: TextAlignVertical.center,
          cursorRadius: Radius.circular(radius),
          cursorColor: textfieldscolor,
          style: TextStyle(
            color: textfieldscolor,
            fontSize: querywidth / 25,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w300,
          ),
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            disabledBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            enabledBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            focusedBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: textfieldscolor),
            ),
            errorBorder: UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(width: 2, color: Colors.black),
            ),
            labelStyle: TextStyle(
              color: textfieldscolor,
              fontSize: querywidth / 30,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
            ),
            labelText: '$text',
            prefixIcon: Icon(
              icon,
              color: textfieldscolor,
              size: querywidth / 15,
            ),
          ),
        ),
      ),
    );
  }
}
