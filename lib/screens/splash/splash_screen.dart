import 'package:flutter/material.dart';
import 'package:AROODA/screens/splash/components/body.dart';
import 'package:AROODA/screens/home/home_screen.dart';
import 'package:AROODA/screens/splash/components/splash_content.dart';
import 'package:AROODA/screens/sign_in/sign_in_screen.dart';
import 'package:AROODA/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color(0xff203152),
      //   title: Text(
      //     'AROODA',
      //     style: new TextStyle(
      //         fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.login,
      //         color: Colors.white,
      //       ),
      //       onPressed: () {
      //         // do something
      //         Navigator.pushNamed(context, HomeScreen.routeName);
      //       },
      //     ),
      //   ],
      // ),
      body: IntroScreen(),
    );
  }
}
