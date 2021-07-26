import 'package:flutter/material.dart';

import 'body.dart';

class PPembayaranScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0F2B55),
        title: Text("AROODA"),
      ),
      body: Pembayaran(),
    );
  }
}
