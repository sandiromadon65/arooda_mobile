import 'package:flutter/material.dart';

import 'package:AROODA/screens/wakaf/components/body.dart';

class WakafScreen extends StatelessWidget {
  static String routeName = "/wakaf";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Jenis Wakaf",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: WakafForm(),
    );
  }
}
