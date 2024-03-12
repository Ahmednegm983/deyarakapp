import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/related_suggestion_list.dart';
import 'package:deyarakapp/Featurs/profile/presentation/widgets/confirmedinformation.dart';
import 'package:deyarakapp/Featurs/profile/presentation/widgets/profilecard.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class profilewidget extends StatelessWidget {
  profilewidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              profilecard(
                firstname: 'Ahmed',
                lastname: 'mohamed',
                rating: 4.5,
                phone: 01033886218,
              ),
              confirmation(),
              RelatedSuggestion(),
            ],
          ),
        ),
      ),
    );
  }
}
