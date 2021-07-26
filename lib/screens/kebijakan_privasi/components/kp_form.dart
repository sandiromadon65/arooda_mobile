import 'package:flutter/material.dart';
import 'package:AROODA/helper/keyboard.dart';
import 'package:AROODA/screens/sedekahshubuh/ss_screen.dart';
import 'package:AROODA/components/default_button.dart';
import '../../../size_config.dart';

class KebijakanPrivasiForm extends StatefulWidget {
  @override
  _KebijakanPrivasiFormState createState() => _KebijakanPrivasiFormState();
}

class _KebijakanPrivasiFormState extends State<KebijakanPrivasiForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      key: _formKey,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          color: Colors.grey,
          height: 329,
          width: 300,
          child: Column(
            children: [
              Divider(height: 10, thickness: 0),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
              Text(" ", style: TextStyle(fontSize: 14)),
              Divider(height: 10, thickness: 1),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(40)),
        DefaultButton(
          text: "Konfirmasi",
          press: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              KeyboardUtil.hideKeyboard(context);
              Navigator.pushNamed(context, OtpScreen.routeName);
            }
          },
        ),
      ],
    );
  }
}
