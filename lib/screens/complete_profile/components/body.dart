import 'package:flutter/material.dart';
import 'package:AROODA/constants.dart';
import 'package:AROODA/size_config.dart';

import 'complete_profile_form.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text("Lengkapi Data Diri",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: getProportionateScreenHeight(20)),
                SizedBox(height: getProportionateScreenHeight(10)),
                CompleteProfileForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
