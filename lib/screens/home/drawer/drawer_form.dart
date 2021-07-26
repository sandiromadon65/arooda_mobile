import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  SharedPreferences sharedPreferences;
  String email;

  @override
  @override
  void initState() {
    super.initState();
    _getEmail();
  }

  _getEmail() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      email = sharedPreferences.getString('email');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: ClipOval(
              child: Image(
                  image: AssetImage('assets/images/Profile Image.png'),
                  fit: BoxFit.cover),
            ),
            // otherAccountsPictures: [
            //   ClipOval(
            //     child: Image(
            //         image: AssetImage('assets/images/orang1.jpg'), fit: BoxFit.cover),
            //   ),
            //   ClipOval(
            //     child: Image(
            //         image: AssetImage('assets/images/orang3.jpeg'), fit: BoxFit.cover),
            //   )
            // ],
            accountName: Text('Muhammad Ridho'),
            accountEmail: Text(email == null ? 'No name' : email),
          ),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Riwayat',
              onTap: () => print('Tap Riwayat menu')),
          _drawerItem(
              icon: Icons.settings,
              text: 'Pengaturan',
              onTap: () => print('Tap Pengaturan menu')),
          // Divider(height: 25, thickness: 1),
          // Padding(
          //   padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          //   child: Text("Labels",
          //       style: TextStyle(
          //         fontSize: 16,
          //         color: Colors.black,
          //       )),
          // ),
          _drawerItem(
              icon: Icons.logout,
              text: 'Keluar',
              onTap: () => print('Tap Keluar menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/Profile Image.png'),
          fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(
    //         image: AssetImage('assets/images/orang1.jpg'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(
    //         image: AssetImage('assets/images/orang3.jpeg'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('Muhammad Ridho'),
    accountEmail: Text('m_ridho07@gmail.com'),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

class DrawerrWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[],
      ),
    );
  }
}

Widget _drawerrItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
