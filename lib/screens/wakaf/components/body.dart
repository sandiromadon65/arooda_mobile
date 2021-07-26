import 'package:flutter/material.dart';
import 'package:AROODA/screens/wakaf/components/wakaf_uang.dart';
import 'package:AROODA/screens/wakaf/components/wakaf_quran.dart';
import '../../../size_config.dart';

class WakafForm extends StatelessWidget {
  final String title = "Wakaf";
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
                  MaterialPageRoute(builder: (context) => DropDownUang());
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
                "Wakaf Uang",
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
                  MaterialPageRoute(builder: (context) => DropDownQuran());
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
                "Wakaf Qur'an",
                style: new TextStyle(fontSize: 15.0, color: Colors.black),
              ),
              // trailing: Icon(Icons.star),
            ),
          ),
        ],
      ),
    );
  }
}
