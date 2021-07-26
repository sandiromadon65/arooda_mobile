import 'package:flutter/material.dart';
import 'package:AROODA/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Belum Punya Akun? ",
          style: TextStyle(
              // fontSize: getProportionateScreenWidth(1),
              color: Color(0xffD8B129)),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "REGISTRASI",
            style: TextStyle(
                // fontSize: getProportionateScreenWidth(16),
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}
