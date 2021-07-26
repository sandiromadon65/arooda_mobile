import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:AROODA/screens/sign_in/sign_in_screen.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        backgroundImageFit: BoxFit.cover,
        backgroundImage: "assets/image/OnBoarding.png",
      ),
    );
    slides.add(
      new Slide(
        backgroundImageFit: BoxFit.cover,
        backgroundImage: "assets/image/Frame 101.jpg",
      ),
    );
    slides.add(
      new Slide(
        backgroundImageFit: BoxFit.cover,
        backgroundImage: "assets/image/Frame 11.png",
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.blue,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return IconButton(
      icon: Icon(
        Icons.done,
        color: Colors.blue,
      ),
      onPressed: () {
        // do something
        Navigator.pushNamed(context, SignInScreen.routeName);
      },
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.blue,
    );
  }

  // ButtonStyle myButtonStyle() {
  //   return ButtonStyle(
  //     shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
  //     backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
  //     overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,

      // Dot indicator
      colorDot: Colors.grey,
      colorActiveDot: Colors.blue,
      sizeDot: 13.0,

      // Show or hide status bar
      // hideStatusBar: true,
      // backgroundColorAllSlides: Colors.grey,

      // Scrollbar
      // verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
