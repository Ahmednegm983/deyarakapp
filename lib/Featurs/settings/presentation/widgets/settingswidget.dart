import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/Button.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:deyarakapp/theme/themeprovider.dart';

class settingswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(
              k: AppRouter.kmenu,
              text: 'Settings',
              h: 0.03,
            ),
            MyDropdownList(),
            GestureDetector(
                onTap: () {
                  Provider.of<ThemeProvide>(context, listen: false)
                      .Toggletheme();
                },
                child: switchbutton()),
            Button(
              text: 'Save',
              ontap: () {},
              raduis: 15,
              colorr: kprimarycolor,
              width: 4.2,
              marginn: 3,
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}

class MyDropdownList extends StatefulWidget {
  @override
  _MyDropdownListState createState() => _MyDropdownListState();
}

class _MyDropdownListState extends State<MyDropdownList> {
  String selectedValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        alignment: Alignment.centerLeft,
        iconSize: 50,
        underline: SizedBox(),
        focusColor: Colors.black,
        itemHeight: 60,
        isExpanded: true,
        style: Fonts.textstyle18
            .copyWith(color: const Color.fromARGB(255, 108, 108, 108)),
        value: selectedValue,
        onChanged: (newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: <String>['English', 'Arabic'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

class switchbutton extends StatefulWidget {
  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<switchbutton> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dark Mode',
            style: Fonts.textstyle24,
          ),
          Switch(
            value: switchValue,
            onChanged: (newValue) {
              setState(() {
                switchValue = newValue;
                Provider.of<ThemeProvide>(context, listen: false).Toggletheme();
              });
            },
          ),
        ],
      ),
    );
  }
}
