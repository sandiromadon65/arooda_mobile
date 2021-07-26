import 'package:flutter/material.dart';
import 'package:AROODA/screens/dana_dai/components/body.dart';

class DaiScreen extends StatelessWidget {
  static String routeName = "/dana_dai";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Dana Da'i",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: DropDownDai(),
    );
  }
}
