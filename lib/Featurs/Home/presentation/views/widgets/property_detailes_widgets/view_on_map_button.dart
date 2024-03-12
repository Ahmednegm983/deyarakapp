import 'package:deyarakapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewOnMapButton extends StatelessWidget {
  const ViewOnMapButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: SizedBox(
        height: 50,
        width: double.maxFinite,
        child: ElevatedButton.icon(
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(kprimarycolor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: () {},
            icon: const Icon(Icons.location_on_outlined),
            label: const Text(
              'View on Map',
              style: TextStyle(fontSize: 16),
            )),
      ),
    );
  }
}
