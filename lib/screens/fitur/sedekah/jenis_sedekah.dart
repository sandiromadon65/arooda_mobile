import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/fitur/sedekah/sedekah_uang.dart';
import 'package:AROODA/screens/fitur/sedekah/sedekah_barang.dart';

class JenisSedekah extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final String title = "Jenis Sedekah";
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
          new GestureDetector(
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => DropDown());
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
                "Sedekah Uang",
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
                  MaterialPageRoute(builder: (context) => DropDownBarang());
              Navigator.push(context, route);
            },
            child: ListTile(
              leading: Text(
                "2.",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              title: Text(
                "Sedekah Barang",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              // trailing: Icon(Icons.star_half),
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
              "Sedekah Makanan",
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
            // trailing: Icon(Icons.star_border),
          ),
        ],
      ),
    );
  }
}
