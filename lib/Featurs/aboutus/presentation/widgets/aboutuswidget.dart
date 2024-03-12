import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';

class aboutuswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          appbar(
            k: AppRouter.kmenu,
            text: 'About Deyarak',
            h: 0.03,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/Select house-pana.png',
                height: 300,
              ),
              Text(
                "Deyarak Application offers a revolutionary solution to the intricate process of finding a place to call home. From the seamless creation of secure user accounts to the vibrant display of property ads, our platform is meticulously designed to enhance every step of the property search and transaction journey.We pride ourselves on fostering transparency between property owners and potential tenants, eliminating the need for intermediaries and ensuring direct communication through our integrated chat feature. The inclusion of user ratings adds an extra layer of credibility, promoting a trustworthy community for both owners and seekers.With a user-friendly interface, personalized profiles, and the potential inclusion of a payment feature, our application not only meets the needs of individuals seeking properties but also extends its reach to expatriate students,acknowledging the unique challenges they face in finding accommodation while pursuing their education away from home.",
                style: Fonts.textstyle18.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
