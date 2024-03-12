import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  String firstname;
  String lastname;
  double rating;
  int phone;

  ProfileCard(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.rating,
      required this.phone});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 24, top: 24, bottom: 12, right: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/m.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  firstname,
                  style:
                      Fonts.textstyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  lastname,
                  style:
                      Fonts.textstyle30.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '$rating',
                  style:
                      Fonts.textstyle18.copyWith(fontWeight: FontWeight.bold),
                ),
                const Icon(
                  Icons.star,
                  size: 16,
                ),
              ],
            ),
            const Text(
              'Rating',
              style: Fonts.textstyle12,
            ),
            const SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    ]);
  }
}
