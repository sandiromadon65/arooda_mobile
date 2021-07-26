import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';
import 'package:AROODA/screens/struk_transaksi/struk_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Pembayaran extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  static String routeName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      body: Container(
        height: 550,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(10)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(19),
          vertical: getProportionateScreenWidth(19),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Text(
              "Dompet Digital",
              style: new TextStyle(
                fontSize: 23.0,
                color: Colors.black,
                fontFamily: "NeoSansBold",
                fontWeight: FontWeight.bold,
              ),
            ),
            new Text(
              "Isi Ulang Saldo Anda",
              style: new TextStyle(
                fontSize: 17.0,
                color: Colors.black,
                fontFamily: "NeoSansBold",
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/image/ovo.png',
                  width: 40.0,
                ),
                Column(
                  children: [
                    new Text(
                      "    OVO",
                      style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                          fontFamily: "NeoSansBold",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(5)),
            SizedBox(height: getProportionateScreenHeight(25)),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Text(
                  "Virtual Account",
                  style: new TextStyle(
                    fontSize: 23.0,
                    color: Colors.black,
                    fontFamily: "NeoSansBold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Text(
                  "Bayar di ATM atau Internet Banking.",
                  style: new TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontFamily: "NeoSansBold",
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(10)),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/bri.jpg',
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        new Text(
                          "    Bank BRI",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontFamily: "NeoSansBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/bca.jpg',
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        new Text(
                          "    Bank BCA",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontFamily: "NeoSansBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/bni.jpg',
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        new Text(
                          "    Bank BNI",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontFamily: "NeoSansBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/mandiri.jpg',
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        new Text(
                          "    Bank Mandiri",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontFamily: "NeoSansBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  children: [
                    Image.asset(
                      'assets/image/permata.jpg',
                      width: 40.0,
                    ),
                    Column(
                      children: [
                        new Text(
                          "    Bank Permata Bank",
                          style: new TextStyle(
                              fontSize: 17.0,
                              color: Colors.black,
                              fontFamily: "NeoSansBold",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      'Saya Setuju dengan Syarat dan Ketentuan yang Berlaku.',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "NeoSansBold",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
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
                          "Lanjut",
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
