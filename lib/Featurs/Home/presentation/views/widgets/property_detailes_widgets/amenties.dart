import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/amenties_row.dart';

import 'package:flutter/material.dart';

class Amenties extends StatelessWidget {
  const Amenties({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Amenties',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const AmentiesRow(label: 'Wifi', icon: Icons.wifi);
            },
          ),
        )
      ],
    );
  }
}
