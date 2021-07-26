import 'package:flutter/material.dart';
import 'package:AROODA/components/socal_card.dart';
import 'package:AROODA/constants.dart';
import 'package:AROODA/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 5),
                // Image.asset(
                //   "assets/image/Group318.png",
                //   color: Colors.white,
                //   width: 140,
                //   height: 100,
                // ),
                SizedBox(height: 10),
                Text(
                    "Registrasi Akun                                                               "),
                SizedBox(height: 10),
                SignUpForm(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
