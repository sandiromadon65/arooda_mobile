import 'package:flutter/material.dart';
import 'package:AROODA/screens/dana_riba/components/body.dart';

class RibaScreen extends StatelessWidget {
  static String routeName = "/dana_riba";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Dana Riba",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: DropDownRiba(),
    );
  }
}
