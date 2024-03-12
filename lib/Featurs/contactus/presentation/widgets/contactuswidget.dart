import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/Button.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/appbarwidget.dart';
import 'package:deyarakapp/Featurs/personalinformation/presentation/views/widgets/customtextfield.dart';
import 'package:deyarakapp/constants.dart';
import 'package:deyarakapp/core/utils/router.dart';
import 'package:flutter/material.dart';

class contactuswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(
              k: AppRouter.kmenu,
              text: 'Contact Us',
              h: 0.03,
            ),
            customtextfield(hinttext: '', labeltext: 'User Name'),
            customtextfield(hinttext: '', labeltext: 'Phone Number'),
            customtextfield(hinttext: '', labeltext: 'Message Title'),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: TextFormField(
                  maxLines: 12,
                  minLines: 5,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      labelText: 'Message',
                      labelStyle: TextStyle(color: Colors.grey))),
            ),
            Button(
                text: 'Send',
                ontap: () {},
                raduis: 15,
                colorr: kprimarycolor,
                width: 4.2,
                marginn: 3,
                height: 18),
          ],
        ),
      ),
    );
  }
}
