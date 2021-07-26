import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';

class History_Transaksi extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // child: Container(
        //   height: 500,
        //   padding: EdgeInsets.only(left: 30, right: 30),
        //   color: Colors.white,
        //   alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
            ),
            Text(
              "Belum ada Transaksi Pembayaran",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
