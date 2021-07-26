import 'package:AROODA/screens/debit/components/body.dart';
import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';
import 'components/body.dart';

class KebijakanPrivasiScreen extends StatelessWidget {
  static String routeName = "/kebijakan_privasi";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kebijakan & Privasi",
          style: new TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
      body: KP_Body(),
    );
  }
}
