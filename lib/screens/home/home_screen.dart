import 'package:AROODA/screens/notif_screen/screen.dart';
import 'package:flutter/material.dart';
import 'package:AROODA/components/coustom_bottom_nav_bar.dart';
import 'package:AROODA/screens/home/drawer/drawer_form.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';
import 'package:AROODA/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 90,
        title: Text(
          'AROODA',
          style: new TextStyle(
              fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.circle_notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, NotifScreen.routeName);
            },
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
