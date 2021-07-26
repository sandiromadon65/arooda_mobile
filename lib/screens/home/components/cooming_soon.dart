import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../size_config.dart';
import 'title.dart';

class CoomingSoon extends StatelessWidget {
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
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(0)),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(8)),
              child: SectionTitle(
                title: "  Cooming Soon",
                press: () {},
              ),
            ),
            Container(
              height: 140,
              width: double.infinity,
              margin: EdgeInsets.all(getProportionateScreenWidth(10)),
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
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
                      mainMenuIcon(
                        src: "assets/image/sedekah.jpg",
                        text: "Tabungan\nQurban",
                      ),
                      mainMenuIcon(
                        src: "assets/image/zakat.jpg",
                        text: "Market",
                      ),
                      mainMenuIcon(
                        src: "assets/image/wakaf.jpg",
                        text: "Service",
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
