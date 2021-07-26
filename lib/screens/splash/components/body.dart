// import 'package:flutter/material.dart';
// import 'package:AROODA/screens/sign_in/sign_in_screen.dart';

// class IntroScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   backgroundColor: Color(0xff203152),
//       //   title: Text(
//       //     'AROODA',
//       //     style: new TextStyle(
//       //         fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
//       //   ),
//       //   actions: <Widget>[
//       //     IconButton(
//       //       icon: Icon(
//       //         Icons.login,
//       //         color: Colors.white,
//       //       ),
//       //       onPressed: () {
//       //         // do something
//       //         Navigator.pushNamed(context, SignInScreen.routeName);
//       //       },
//       //     ),
//       //   ],
//       // ),
//       body:
//         Container(
//         constraints: BoxConstraints.expand(),
//         decoration: BoxDecoration(
//           color: Color.fromARGB(255, 255, 255, 255),
//         ),
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Positioned(
//               left: 0,
//               right: 0,
//               child: Container(
//                 height: 640,
//                 child: Image.asset(
//                   "assets/image/OnBoarding.png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             // Positioned(
//             //   left: 20,
//             //   top: 58,
//             //   right: 337,
//             //   child: Container(
//             //     height: 12,
//             //     child: Opacity(
//             //       opacity: 0.3,
//             //       child: Image.asset(
//             //         "assets/images/np-arrow-685135-000000-2.png",
//             //         fit: BoxFit.none,
//             //       ),
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:AROODA/screens/sign_in/sign_in_screen.dart';
// import 'package:AROODA/screens/splash/components/example.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:intro_slider/slide_object.dart';

// // This is the best practice
// import '../components/splash_content.dart';
// import '../../../components/default_button.dart';

// class IntroScreen extends StatefulWidget {
//   @override
//   IntroScreenState createState() => IntroScreenState();
// }

// class IntroScreenState extends State<IntroScreen> {
//   List<Slide> slides = [];

//   @override
//   void initState() {
//     super.initState();

//     slides.add(
//       new Slide(
//         pathImage: "assets/image/Onboarding 1 (1).jpg",
//         backgroundColor: Color(0xff203152),
//       ),
//     );
//     slides.add(
//       new Slide(
//         pathImage: "assets/image/Onboarding 2 (1).jpg",
//         backgroundColor: Color(0xff203152),
//       ),
//     );
//     // slides.add(
//     //   new Slide(
//     //     title: "TRANSAKSI",
//     //     description: "Ayoo Sedekah dan Zakat dengan ber-Transaksi di Arooda",
//     //     pathImage: "assets/image/credit-card.png",
//     //     backgroundColor: Color(0xff203152),
//     //   ),
//     // );
//   }

//   void onDonePress() {
//     // Do what you want
//     GestureDetector(
//       onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
//       child: Text('Login'),
//     );
//     print("Slide Terakhir");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xff203152),
//         title: Text(
//           'AROODA',
//           style: new TextStyle(
//               fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.login,
//               color: Colors.white,
//             ),
//             onPressed: () {
//               // do something
//               Navigator.pushNamed(context, SignInScreen.routeName);
//             },
//           ),
//         ],
//       ),
//       body: IntroSlider(
//         slides: this.slides,
//         onDonePress: this.onDonePress,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:AROODA/screens/sign_in/sign_in_screen.dart';
import 'package:AROODA/screens/splash/components/example.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Intro extends StatefulWidget {
  @override
  IntroState createState() => IntroState();
}

class IntroState extends State<Intro> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        pathImage: "assets/image/Onboarding 1 (1).jpg",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        heightImage: 110,
        // backgroundImageFit: BoxFit.fill,
        pathImage: "assets/image/OnBoarding.png",
        backgroundColor: Color(0xff203152),
      ),
    );
    // child:
    // Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Positioned(
    //       left: 0,
    //       right: 0,
    //       child: Container(
    //         height: 640,
    //         child: Image.asset(
    //           "assets/image/OnBoarding.png",
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    // slides.add(
    //   new Slide(
    //     title: "TRANSAKSI",
    //     description: "Ayoo Sedekah dan Zakat dengan ber-Transaksi di Arooda",
    //     pathImage: "assets/image/credit-card.png",
    //     backgroundColor: Color(0xff203152),
    //   ),
    // );
  }

  void onDonePress() {
    // Do what you want
    GestureDetector(
      onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
      child: Text('Login'),
    );
    print("Slide Terakhir");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        slides: this.slides,
        onDonePress: this.onDonePress,
      ),
    );
  }
}
