import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/amenties.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/home_view_widgets/image_slide_show.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/profilecard.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/property_description.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/property_info_column.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/related_suggestion_list.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/view_on_map_button.dart';

import 'package:flutter/material.dart';

class PropertyDetailesBody extends StatelessWidget {
  const PropertyDetailesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(overscroll: false),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: ImageSlideShow(),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 24, right: 24, bottom: 8),
                child: Expanded(child: ProprtyInfoColumn())),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, bottom: 8),
              child: Expanded(child: Amenties()),
            ),
            const ViewOnMapButton(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            ProfileCard(
                firstname: 'Ahmed',
                lastname: 'Ali',
                rating: 2.5,
                phone: 0101984435),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            const Description(),
            const SizedBox(
              height: 50,
            ),
            const RelatedSuggestion()
          ],
        ),
      ),
    );
  }
}
