import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/property_info_row.dart';
import 'package:flutter/material.dart';

class ProprtyInfoColumn extends StatelessWidget {
  const ProprtyInfoColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const PropertyInfoRow(
            label: 'price', value: '2000', icon: Icons.money);
      },
    );
  }
}
