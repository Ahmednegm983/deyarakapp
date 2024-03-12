import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/personalinformationitem.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class personalinformationwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appbar(
            k: AppRouter.kmenu,
            text: 'Personal Information',
            h: 0.03,
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kusername);
            },
            child: Personalinformationitem(
              base: 'User Name',
              hint: 'Ahmed Mohamed',
              last: 'Edit',
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kemail);
            },
            child: Personalinformationitem(
              base: 'Email',
              hint: 'AhmedMohamed@gmail.com',
              last: 'Edit',
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kphonenumber);
            },
            child: Personalinformationitem(
              base: 'Phone Number',
              hint: 'provide Phone Number',
              last: 'Add',
            ),
          ),
        ],
      ),
    );
  }
}
