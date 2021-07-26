// import 'package:AROODA/screens/auth_success/register_auth/screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:AROODA/helper/keyboard.dart';
import 'package:AROODA/screens/kebijakan_privasi/kp_screen.dart';
import 'package:AROODA/screens/home/home_screen.dart';
import 'package:AROODA/components/default_button.dart';
import 'package:AROODA/components/form_error.dart';
import '../../../constants.dart';
import 'package:AROODA/api_example/user_model.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  TextEditingController provinsiController = TextEditingController();
  TextEditingController kabupatenController = TextEditingController();
  TextEditingController kecamatanController = TextEditingController();
  TextEditingController kelurahanController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String provinsi;
  String kabupaten;
  String kecamatan;
  String kelurahan;
  var text;

  set kategoriLokasi(kategoriLokasi) {}

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // Text(
          //   "User ID                                                                   ",
          //   style: TextStyle(fontSize: 15),
          // ),
          // buildUserFormField(),
          SizedBox(height: 10),
          Text(
            "Provinsi                                                                    ",
            style: TextStyle(fontSize: 15),
          ),
          buildProvinsiFormField(),
          SizedBox(height: 10),
          Text(
            "Kabupaten                                                                    ",
            style: TextStyle(fontSize: 15),
          ),
          buildKotaFormField(),
          SizedBox(height: 10),
          Text(
            "Kecamatan                                                                    ",
            style: TextStyle(fontSize: 15),
          ),
          buildKecamatanFormField(),
          SizedBox(height: 10),
          Text(
            "Kelurahan                                                                    ",
            style: TextStyle(fontSize: 15),
          ),
          buildKelurahanFormField(),
          SizedBox(height: 10),
          // Text(
          //   "No.Telpon                                                                    ",
          //   style: TextStyle(fontSize: 15),
          // ),
          // buildTelponFormField(),
          FormError(errors: errors),
          SizedBox(height: 40),
          DefaultButton(
            text: "Simpan",
            press: () async {
              Navigator.pushNamed(context, HomeScreen.routeName);
              // if (_formKey.currentState.validate()) {

              //   _formKey.currentState.save();
              //   KeyboardUtil.hideKeyboard(context);

              // }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildKelurahanFormField() {
    return TextFormField(
      controller: kelurahanController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => kelurahan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kKelurahanNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kKelurahanNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Email",
        // hintText: "Kelurahan",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildKecamatanFormField() {
    return TextFormField(
      controller: kecamatanController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => kecamatan = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kKecamatanNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kKecamatanNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Email",
        // hintText: "Kecamatan",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildKotaFormField() {
    return TextFormField(
      controller: kabupatenController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => kabupaten = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kKotaNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kKotaNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Email",
        // hintText: "Kota / Kabupaten",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildProvinsiFormField() {
    return TextFormField(
      controller: provinsiController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => provinsi = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kProvinsiNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kProvinsiNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Email",
        // hintText: "Provinsi",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  Future<void> getAPILokasi() async {
    // url to registration php script
    var api_url = "http://arroda-api.konslat.com/v1/provinsi";
    var hasil = await http.get(api_url);
    var ekstrak = jsonDecode(hasil.body);
    kategoriLokasi = KategoriLokasi.fromJson(ekstrak);
    setState(() {
      var _loading = false;
    });
  }

  List<DropdownMenuItem> generateItems(KategoriLokasi kategoriLokasi) {
    List<DropdownMenuItem> items = [];
    for (var item in kategoriLokasi.data) {
      items.add(
        DropdownMenuItem(
          child: Text(
            item.namaLokasi,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
      );
    }
  }
}

class KategoriLokasi {
  get data => null;

  static fromJson(ekstrak) {}
}
