import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/struk_transaksi/struk_screen.dart';

//Form Zakat Fitrah 2
class Body extends StatefulWidget {
  static String routeName;

  const Body({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "AROODA",
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
                Image.asset(
                  "assets/images/success.png",
                  width: 200,
                  height: 150,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SUKSES",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.orange[900],
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pembayaran / Transaksi Sukses",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Terima Kasih",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nomor Pesanan",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Zkt00153897",
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
                  "Hari & Tanggal",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Sabtu, 21-05-2021",
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
                  "Waktu",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "22:21 WIB",
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Total Bayar",
                  style: TextStyle(
                      fontSize: 17,
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
                  "Rp. 212.500",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 29.0,
                  width: 80.0,
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(width: 1, color: Colors.blue),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LUNAS",
                        style: new TextStyle(
                          fontSize: 12.0,
                          color: Colors.blue,
                          fontFamily: "NeoSansBold",
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new GestureDetector(
                  onTap: () {
                    // Route route = MaterialPageRoute(
                    //     builder: (context) => ());
                    // Navigator.push(context, route);
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
                      "Download Data Transaksi",
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
