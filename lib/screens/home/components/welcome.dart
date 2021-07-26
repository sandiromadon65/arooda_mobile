import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class AroodaAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(3)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(15),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: new BoxDecoration(
        color: Color(0xff203152),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          new Text(
            "Assalamualaikum Ridho\nSelamat Datang di AROODA.",
            style: TextStyle(fontSize: 11.0, color: Colors.white),
            textAlign: TextAlign.left,
          ),
          new Text("                              "),
          // new IconButton(
          //   icon: Icon(
          //     Icons.timer,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // ),
          new Text(
            "Waktu Shalat \nShubuh 04.28",
            style: TextStyle(fontSize: 10.0, color: Colors.white),
            textAlign: TextAlign.right,
          ),
          Column(
            children: [
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
