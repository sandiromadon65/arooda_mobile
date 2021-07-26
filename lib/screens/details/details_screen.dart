import 'package:flutter/material.dart';
import '../../screens/details/history_body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Riwayat Transaksi",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: History_Transaksi(),
    );
  }
}
