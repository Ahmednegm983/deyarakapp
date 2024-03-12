import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class profilecard extends StatelessWidget {
  String firstname;
  String lastname;
  double rating;
  int phone;

  profilecard(
      {super.key,
      required this.firstname,
      required this.lastname,
      required this.rating,
      required this.phone});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.07,
        height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 185, 185, 185)),
              top: BorderSide(color: Color.fromARGB(255, 185, 185, 185)),
              left: BorderSide(color: Color.fromARGB(255, 185, 185, 185)),
              right: BorderSide(color: Color.fromARGB(255, 185, 185, 185))),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 24, bottom: 12, right: 64),
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
                Text(
                  firstname,
                  style:
                      Fonts.textstyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  lastname,
                  style: Fonts.textstyle14,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '$rating',
                      style: Fonts.textstyle40,
                    ),
                    Icon(Icons.star),
                  ],
                ),
                Text(
                  'Rating',
                  style: Fonts.textstyle14,
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  '$phone',
                  style:
                      Fonts.textstyle24.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Phone Number',
                  style: Fonts.textstyle14,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
