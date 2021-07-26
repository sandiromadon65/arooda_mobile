import 'package:flutter/material.dart';
import 'package:AROODA/components/default_button.dart';
import 'package:AROODA/size_config.dart';
import 'package:AROODA/screens/complete_profile/complete_profile_screen.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FocusNode pin2FocusNode;
  final _formKey = GlobalKey<FormState>();
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  FocusNode pin5FocusNode;
  FocusNode pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    var otpInputDecoration;
        return Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      autofocus: true,
                      obscureText: true,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                      onChanged: (value) {
                        nextField(value, pin2FocusNode);
                      },
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin2FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                      onChanged: (value) => nextField(value, pin3FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin3FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                      onChanged: (value) => nextField(value, pin4FocusNode),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(60),
                    child: TextFormField(
                      focusNode: pin4FocusNode,
                      obscureText: true,
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: otpInputDecoration,
                  onChanged: (value) => nextField(value, pin5FocusNode),
                ),
              ),
              // SizedBox(
              //   width: getProportionateScreenWidth(60),
              //   child: TextFormField(
              //     focusNode: pin5FocusNode,
              //     obscureText: true,
              //     style: TextStyle(fontSize: 24, color: Colors.white),
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.center,
              //     // decoration: otpInputDecoration,
              //     onChanged: (value) => nextField(value, pin6FocusNode),
              //   ),
              // ),
              // SizedBox(
              //   width: getProportionateScreenWidth(60),
              //   child: TextFormField(
              //     focusNode: pin6FocusNode,
              //     obscureText: true,
              //     style: TextStyle(fontSize: 24, color: Colors.white),
              //     keyboardType: TextInputType.number,
              //     textAlign: TextAlign.center,
              //     // decoration: otpInputDecoration,
              //     onChanged: (value) => nextField(value, pin6FocusNode),
              //   ),
              // ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.30),
          DefaultButton(
            text: "Lanjut",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();

                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }
}
