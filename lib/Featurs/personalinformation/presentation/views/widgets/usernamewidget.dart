import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/Button.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/customtextfield.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:deyarakapp/core/utils/router.dart';

import 'package:flutter/material.dart';

class usernamewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbar(
            k: AppRouter.kpersonalinformation,
            text: 'Personal Information',
            h: 0.03,
          ),
          Text(
            'Edit User Name',
            style: Fonts.textstyle24,
          ),
          customtextfield(
            hinttext: '  Ahmed',
            labeltext: '  First Name',
          ),
          customtextfield(
            hinttext: '  Mohamed',
            labeltext: '  Last Name',
          ),
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
    );
  }
}
