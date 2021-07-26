import 'package:flutter/material.dart';
import 'package:AROODA/constants.dart';
import 'package:AROODA/size_config.dart';
import 'ss_form.dart';

class Bodyy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "Silahkan Buat Pin",
                style: headingStyle,
              ),
              Text("Demi Keamanan Akun Anda"),
              Body(),
              SizedBox(height: SizeConfig.screenHeight * 0.5),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Row buildTimer() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Text("This code will expired in "),
  //       TweenAnimationBuilder(
  //         tween: Tween(begin: 30.0, end: 0.0),
  //         duration: Duration(seconds: 30),
  //         builder: (_, value, child) => Text(
  //           "00:${value.toInt()}",
  //           style: TextStyle(color: kPrimaryColor),
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
