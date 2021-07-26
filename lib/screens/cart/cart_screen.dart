import 'package:flutter/material.dart';
import 'components/body.dart';

class PembayaranScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text("AROODA",
            style: new TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
      ),
      body: Pembayaran(),
    );
  }
}
