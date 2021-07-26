import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';
import 'components/ss_form.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/sedekahshubuh";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buat Pin",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Bodyy(),
    );
  }
}
