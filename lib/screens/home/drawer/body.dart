import 'package:flutter/material.dart';
import 'package:AROODA/screens/home/drawer/drawer_form.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
    );
  }
}
