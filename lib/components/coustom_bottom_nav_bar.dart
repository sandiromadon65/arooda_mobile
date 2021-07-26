import 'package:AROODA/screens/fitur/camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:AROODA/screens/home/home_screen.dart';
import 'package:AROODA/screens/profile/profile_screen.dart';
import 'package:AROODA/screens/details/details_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Colors.black;
    return Container(
      height: 50.0,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/home.svg",
                  color: MenuState.home == selectedMenu
                      ? Colors.blue
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              FloatingActionButton(
                onPressed: null,
                tooltip: '',
                child: Icon(Icons.qr_code_scanner),
                backgroundColor: Colors.blue[400],
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/history.svg",
                  color: MenuState.profile == selectedMenu
                      ? Colors.blue
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, DetailsScreen.routeName),
              ),
              // IconButton(
              //   icon: SvgPicture.asset(
              //     "assets/icons/qr-code.svg",
              //     color: MenuState.profile == selectedMenu
              //         ? Colors.blue
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, ProfileScreen.routeName),
              // ),
              // IconButton(
              //   icon: SvgPicture.asset(
              //     "assets/icons/User Icon.svg",
              //     color: MenuState.profile == selectedMenu
              //         ? Colors.blue
              //         : inActiveIconColor,
              //   ),
              //   onPressed: () =>
              //       Navigator.pushNamed(context, ProfileScreen.routeName),
              // ),
            ],
          )),
    );
  }
}
