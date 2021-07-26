import 'package:flutter/material.dart';

import 'package:AROODA/screens/zakatt/components/body.dart';

class FormZakatScreen extends StatelessWidget {
  static String routeName = "/zakatt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Jenis Zakat",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ZakatForm(),
    );
  }
}
