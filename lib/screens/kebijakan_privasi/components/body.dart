import 'package:flutter/material.dart';
import 'package:AROODA/constants.dart';
import 'package:AROODA/size_config.dart';
import 'kp_form.dart';

class KP_Body extends StatelessWidget {
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
                SizedBox(height: getProportionateScreenHeight(30)),
                Text("Kebijakan & Privasi",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: getProportionateScreenHeight(20)),
                SizedBox(height: getProportionateScreenHeight(10)),
                KebijakanPrivasiForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
