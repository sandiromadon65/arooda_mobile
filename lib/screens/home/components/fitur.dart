import 'package:AROODA/screens/dana_riba/dana_riba.dart';
import 'package:AROODA/screens/zakatt/zakatt.dart';
import 'package:AROODA/screens/dana_dai/dana_dai.dart';
import 'package:AROODA/screens/wakaf/wakaf.dart';
import 'package:flutter/material.dart';
import "title.dart";
import '../../../size_config.dart';
import 'package:AROODA/screens/fitur/sedekah/sedekah.dart';

class Fitur extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Widget mainMenuIcon({
    @required String text,
    @required String src,
  }) {
    return Container(
      padding: EdgeInsets.all(6.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset(src),
            width: 60.0,
            height: 60.0,
            padding: EdgeInsets.all(2.0),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var press;
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(0)),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: getProportionateScreenHeight(15)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8)),
              child: SectionTitle(
                title: "  Fitur Kami",
                press: () {},
              ),
            ),
            Container(
              height: 215,
              width: double.infinity,
              margin: EdgeInsets.all(getProportionateScreenWidth(10)),
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenWidth(15),
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, SedekahScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/sedekah.jpg",
                          text: "Sedekah",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, FormZakatScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/zakat.jpg",
                          text: "Zakat",
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, WakafScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/wakaf.jpg",
                          text: "Wakaf",
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, DaiScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/dana dai.jpg",
                          text: "Dana Da'i",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () =>
                            Navigator.pushNamed(context, RibaScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/dana riba.jpg",
                          text: "Dana Riba",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, SedekahScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/emasjid.jpg",
                          text: "E-Masjid",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, SedekahScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/amalanku.jpg",
                          text: "Amalan Ku",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, SedekahScreen.routeName),
                        child: mainMenuIcon(
                          src: "assets/image/sedekah.jpg",
                          text: "Lainnya",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
