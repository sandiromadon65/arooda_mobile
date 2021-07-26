import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/struk_transaksi/struk_screen.dart';

//Form Zakat Fitrah 2
class StrukPending extends StatefulWidget {
  static String routeName;

  const StrukPending({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  StrukPendingState createState() => StrukPendingState();
}

class StrukPendingState extends State<StrukPending> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Struk Pembayaran",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pembayaran Melalui OVO",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pending",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.greenAccent[700],
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Detail Pembayaran",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nama Pembayar",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Hamba Allah",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pembayaran",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Zakat Fitrah",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Waktu Transaksi",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "2021-05-21 / 22:21:46",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Yang Harus Dibayar",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rp. 35.000",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bayar Zakat Anda Sebelum 22 May 2021\n22:21 WIB atau Zakat Anda Otomatis\nDibatalkan oleh Sistem Kami.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => LoginSuccessScreen());
                    Navigator.push(context, route);
                  },
                  child: Container(
                    height: 39.0,
                    width: 315.0,
                    padding: EdgeInsets.all(6.0),
                    decoration: new BoxDecoration(
                      color: Color(0xff0F2B55),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    alignment: Alignment.center,
                    child: new Text(
                      "Bayar Sekarang",
                      style: new TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
