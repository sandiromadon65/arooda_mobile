import 'package:flutter/material.dart';
import 'package:AROODA/components/no_account_text.dart';
import 'package:AROODA/components/socal_card.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

class Bodyy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/image/Group318.png",
                  color: Colors.black,
                  width: 140,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Silahkan Login                                                               "),
                SizedBox(
                  height: 0.01,
                ),
                SignForm(),
                SizedBox(
                  height: 10,
                ),
                NoAccountText(),
                Image.asset(
                  "assets/image/Group 205.png",
                  color: Colors.black,
                  width: 300,
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocalCard(
                      icon: "assets/icons/Group 209.svg",
                      press: () {},
                    ),
                    SocalCard(
                      icon: "assets/icons/Group 210.svg",
                      press: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
