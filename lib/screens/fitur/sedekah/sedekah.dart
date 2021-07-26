import 'package:flutter/material.dart';
import 'package:AROODA/screens/fitur/sedekah/jenis_sedekah.dart';
import 'sedekah_uang.dart';

class SedekahScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  static String routeName = "/sedekah";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Sedekah",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      key: _formKey,
      body: JenisSedekah(),
    );
  }
}
