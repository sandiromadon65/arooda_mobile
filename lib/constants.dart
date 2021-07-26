import 'package:flutter/material.dart';
import 'package:AROODA/size_config.dart';

const utama = Color(0xff203152);
const priority = Color(0xFFB4850D);
const kPrimaryColor = Color(0xff15C8A8);
const kThreeColor = Colors.black;
const kPriorityColor = Color(0x112F5C);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = Color(0xFF189AB4);
const kCampurColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFFABC9CF), Color(0xFF343434)],
);
const kSecondaryColor = Colors.white;
const kTextColor = Colors.white;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.white,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Silahkan Masukkan Email";
const String kNameNullError = "Silahkan Masukkan Nama";
const String kInvalidEmailError = "Silahkan Masukkan Email Yang Benar";
const String kInvalidNameError = "Silahkan Masukkan Nama Yang Benar";
const String kPassNullError = "Silahkan Masukkan Password";
const String kShortPassError = "Password Harus di Isi 8 digit";
const String kMatchPassError = "Password tidak Sesuai";
const String kNamelNullError = "Masukkan Nama Anda";
const String kPhoneNumberNullError = "Masukkan No.Telpon Anda";
const String kAddressNullError = "Masukkan Alamat Anda";
const String kProvinsiNullError = "Masukkan Provinsi Anda";
const String kKotaNullError = "Masukkan Kota Anda";
const String kKecamatanNullError = "Masukkan Kecamatan Anda";
const String kKelurahanNullError = "Masukkan Kelurahan Anda";
const String kTelpNullError = "Masukkan No.Telpon Anda";

// final otpInputDecoration = InputDecoration(
//   contentPadding:
//       EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
//   border: outlineInputBorder(),
//   focusedBorder: outlineInputBorder(),
//   enabledBorder: outlineInputBorder(),
// );

// OutlineInputBorder outlineInputBorder() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: BorderSide(color: kTextColor),
//   );
// }
