import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/customtextfield.dart';
import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';

class emailwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbar(
            k: AppRouter.kpersonalinformation,
            text: 'Personal Information',
            h: 0.03,
          ),
          const Text(
            'Edit Email',
            style: Fonts.textstyle24,
          ),
          customtextfield(
              hinttext: '  AhmedMohamed@gmail.com', labeltext: '  Email'),
        ],
      ),
    );
  }
}

class Button {}
