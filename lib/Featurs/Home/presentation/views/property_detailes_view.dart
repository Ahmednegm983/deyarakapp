import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/contact_method_bar.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/property_detailes_body.dart';

import 'package:flutter/material.dart';

class PropertyDetailesView extends StatefulWidget {
  const PropertyDetailesView({super.key});

  @override
  State<PropertyDetailesView> createState() => _PropertyDetailesViewState();
}

class _PropertyDetailesViewState extends State<PropertyDetailesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: ContactMethodBar(),
      body: const PropertyDetailesBody(),
    );
  }
}
