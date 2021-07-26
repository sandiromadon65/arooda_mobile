import 'package:flutter/material.dart';
import 'package:AROODA/screens/notif_screen/body.dart';
import '../../screens/details/history_body.dart';

class NotifScreen extends StatelessWidget {
  static String routeName = "/notif_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff203152),
      //   title: Text(
      //     "Notification",
      //     style: new TextStyle(
      //         fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Body_Notif(),
    );
  }
}
