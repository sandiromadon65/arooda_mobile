import 'package:AROODA/screens/debit/components/body.dart';
import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';
import 'components/setting_debit_form.dart';

class DebitScreen extends StatelessWidget {
  static String routeName = "/debit";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // appBar: AppBar(
        
      // ),
      body: NominalForm(),
    );
  }
}

