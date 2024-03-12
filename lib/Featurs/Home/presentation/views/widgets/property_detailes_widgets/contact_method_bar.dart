import 'package:deyarakapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactMethodBar extends StatelessWidget {
  ContactMethodBar({super.key});

  final String phone = '+96612345678';
  final Uri _url = Uri.parse('https://wa.me/+201093809647');
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: BottomAppBar(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      color: kprimarycolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () async {
                final smsmsg = 'sms:$phone';
                if (await canLaunchUrlString(smsmsg)) {
                  await launchUrlString(smsmsg);
                }
              },
              icon: const Icon(
                Icons.email_outlined,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () async {
                final call = 'tel:$phone';
                if (await canLaunchUrlString(call)) {
                  await launchUrlString(call);
                }
              },
              icon: const Icon(
                Iconsax.call,
                color: Colors.white,
                size: 30,
              )),
          IconButton(
              onPressed: () async {
                launchUrl(_url, mode: LaunchMode.externalApplication);
              },
              icon: const Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    ));
  }
}
