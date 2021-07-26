import 'package:flutter/material.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';

import '../../../size_config.dart';

class Saldo extends StatelessWidget {
  Widget mainMenuIcon({
    @required String text,
    @required String src,
  }) {
    return 
    Container(
      height: 29.0,
      width: 80.0,
      padding: EdgeInsets.all(6.0),
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(new Radius.circular(100.0)),
          color: Color(0xff31A1A1)),
      alignment: Alignment.center,
      child: new Text(
        "Top Up",
        style: new TextStyle(
          fontSize: 17.0,
          color: Colors.white,
          fontFamily: "NeoSansBold",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var routeName;
    return new Container(
      height: 65,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(10)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saldo Anda :",
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontFamily: "NeoSansBold"),
              ),
              Text(
                "  Rp. 750.000 ",
                style: new TextStyle(
                    fontSize: 19.0,
                    color: Colors.black,
                    fontFamily: "NeoSansBold",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          new Row(
            children: [
              GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, PembayaranScreen.routeName),
                child: mainMenuIcon(
                  src: "",
                  text: "History",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
