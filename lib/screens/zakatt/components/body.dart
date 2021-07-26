import 'package:flutter/material.dart';
import 'package:AROODA/screens/zakatt/components/zakat_maal.dart';
import 'package:AROODA/screens/zakatt/components/zakat_fitrah.dart';
import '../../../size_config.dart';

class ZakatForm extends StatelessWidget {
  final String title = "Zakat";
  final Color bgColor = Colors.green;
  final Color fgColor = Colors.white70;
  final IconData icLogo = Icons.star_border;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 570,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.circular(5),
      ),
      child: ListView(
        children: <Widget>[
          //ROW 1
          new GestureDetector(
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => DropDownZakatMaal());
              Navigator.push(context, route);
            },
            //ROW 1
            child: ListTile(
              // onTap: () => Navigator.pushNamed(context, DropDown.routeName),
              leading: Text(
                "1.",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              title: Text(
                "Zakat Maal (Harta)",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              // trailing: Icon(Icons.star),
            ),
          ),
          //ROW 2
          SizedBox(height: 10.0),
          new GestureDetector(
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => ZakatFitrah());
              Navigator.push(context, route);
            },
            //ROW 1
            child: ListTile(
              // onTap: () => Navigator.pushNamed(context, DropDown.routeName),
              leading: Text(
                "2.",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              title: Text(
                "Zakat Fitrah",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              // trailing: Icon(Icons.star),
            ),
          ),
          //ROW 3
          SizedBox(height: 10.0),
          ListTile(
            leading: Text(
              "3.",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            title: Text(
              "Zakat Emas, Perak & Logam Mulia",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            // trailing: Icon(Icons.star_border),
          ),
          //ROW 4
          SizedBox(height: 10.0),
          ListTile(
            leading: Text(
              "4.",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            title: Text(
              "Zakat Binatang Ternak",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            // trailing: Icon(Icons.star_border),
          ),
          //ROw 5
          SizedBox(height: 10.0),
          ListTile(
            leading: Text(
              "5.",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            title: Text(
              "Zakat Perdagangan / Tijarah",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            // trailing: Icon(Icons.star_border),
          ),
        ],
      ),
    );
  }
}
