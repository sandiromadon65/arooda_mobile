import 'package:AROODA/screens/home/components/informasi.dart';
import 'package:flutter/material.dart';
import 'package:AROODA/screens/home/drawer/drawer_form.dart';
import '../../../size_config.dart';
import 'fitur.dart';
import 'saldo.dart';
import 'welcome.dart';
import 'informasi.dart';
import 'cooming_soon.dart';
import 'media_dakwah.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AroodaAppBar(),
            Saldo(),
            SizedBox(height: getProportionateScreenWidth(15)),
            MediaDakwah(),
            Fitur(),
            // SizedBox(height: getProportionateScreenWidth(15)),
            // CoomingSoon(),
            SizedBox(height: getProportionateScreenWidth(15)),
            Informasi(),
          ],
        ),
      ),
    );
  }
}
