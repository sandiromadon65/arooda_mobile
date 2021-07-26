import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';
import 'package:AROODA/screens/struk_transaksi/components/struk_pending.dart';
import 'package:AROODA/screens/fitur/camera/camera.dart';
import 'package:AROODA/screens/struk_transaksi/struk_screen.dart';
import '../../../constants.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ZakatFitrah extends StatefulWidget {
  static String routeName;

  const ZakatFitrah({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  ZakatFitrahState createState() => ZakatFitrahState();
}

class ZakatFitrahState extends State<ZakatFitrah> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Zakat Fitrah",
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
                  "Masukkan Jumlah Hartamu dan Kalkulator\nKami Akan Menghitung Jumlah Zakatnya.",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hitungan Zakat",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Contoh : Rp. 35.000/Orang",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Divider(height: 10, thickness: 3, color: Colors.black),
              ],
            ),
            Row(
              children: [
                Text(
                  "Untuk",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(220),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Contoh : 1",
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(85),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Orang",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Atas Nama",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(315),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Contoh : Hamba Allah",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Jika lebih dari 1, Pisahkan dengan tanda koma (,)",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  "Total Zakat Fitrahmu",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Text(
                  "Rp. 35.000",
                  style: TextStyle(fontSize: 23, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new GestureDetector(
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ZakatFitrah2());
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
                      "Lanjutkan Bayar Zakat",
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

//Form Zakat Fitrah 2
class ZakatFitrah2 extends StatefulWidget {
  static String routeName;

  const ZakatFitrah2({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  ZakatFitrah2State createState() => ZakatFitrah2State();
}

class ZakatFitrah2State extends State<ZakatFitrah2> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Zakat Fitrah",
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Nominal Zakat",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Contoh : Rp. 35.000",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Lengkapi Data Dibawah Ini",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(390),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Nama Lengkap",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: getProportionateScreenWidth(390),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Kirimkan Bukti Pembayaran Zakat Melalui Email",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: getProportionateScreenWidth(390),
                  height: getProportionateScreenWidth(40),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(),
                      ),
                      hintText: "No.Handphone",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 390,
                  height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Tuliskan Doa atau Dukungan",
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new GestureDetector(
                      onTap: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => StrukPending());
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
                          "Pilih Metode Pembayaran",
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
          ],
        ),
      ),
    );
  }
}
