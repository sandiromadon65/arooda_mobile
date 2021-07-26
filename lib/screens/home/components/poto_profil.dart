import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PotoProfil extends StatelessWidget {
  const PotoProfil({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        fit: StackFit.expand,
        overflow: Overflow.visible,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/mosque.png"),
          ),
          // Positioned(
          //   right: -16,
          //   bottom: 0,
          //   child: SizedBox(
          //     height: 46,
          //     width: 46,
          //     child: FlatButton(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(50),
          //         side: BorderSide(color: Colors.white),
          //       ),
          //       color: Color(0xFFF5F6F9),
          //       onPressed: () {},
          //       child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
