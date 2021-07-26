// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:http/http.dart' as http;

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    this.userId,
    this.name,
    this.email,
    this.password,
    this.password_confirmation,
    this.role,
    this.provinsi,
    this.kabupaten,
    this.kecamatan,
    this.kelurahan,
    this.noHp,
    this.saldo,
    this.isSedekahsubuh,
    this.nominalSedekahsubuh,
    this.idMasjidPilihan,
  });

  String userId;
  String name;
  String email;
  String password;
  String password_confirmation;
  String role;
  String provinsi;
  String kabupaten;
  String kecamatan;
  String kelurahan;
  String noHp;
  String saldo;
  String isSedekahsubuh;
  String nominalSedekahsubuh;
  String idMasjidPilihan;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        userId: json["user_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        password_confirmation: json["password_confirmation"],
        role: json["role"],
        provinsi: json["provinsi"],
        kabupaten: json["kabupaten"],
        kecamatan: json["kecamatan"],
        kelurahan: json["kelurahan"],
        noHp: json["no_hp"],
        saldo: json["saldo"],
        isSedekahsubuh: json["is_sedekahsubuh"],
        nominalSedekahsubuh: json["nominal_sedekahsubuh"],
        idMasjidPilihan: json["id_masjid_pilihan"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": password_confirmation,
        "role": role,
        "provinsi": provinsi,
        "kabupaten": kabupaten,
        "kecamatan": kecamatan,
        "kelurahan": kelurahan,
        "no_hp": noHp,
        "saldo": saldo,
        "is_sedekahsubuh": isSedekahsubuh,
        "nominal_sedekahsubuh": nominalSedekahsubuh,
        "id_masjid_pilihan": idMasjidPilihan,
      };
}

//API_LOGIN
class LoginResponModel {
  final String token;
  final String error;

  LoginResponModel({this.token, this.error});

  factory LoginResponModel.fromJson(Map<String, dynamic> json) {
    return LoginResponModel(
        token: json["token"] != null ? json["token"] : "",
        error: json["error"] != null ? json["error"] : "");
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email.trim(),
      'password': password.trim(),
    };
    return map;
  }
}

//API SERVICE LOGIN
class APIService {
  Future<LoginResponModel> login(LoginRequestModel requestModel) async {
    String myurl = "http://arroda-api.arofah.org/v1/user/login";
    var email;
    var password;
    http.post(myurl,
        headers: {'Accept': 'application/json'},
        body: {"email": email, "password": password}).then((response) {
      print(response.statusCode);
      print(response.body);
    });
    var response;
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Gagal Load Data');
    }
  }
}

//API LOGIN 2
Future loginUser(String email, String password) async {
  String url = "http://arroda-api.arofah.org/v1/user/login";

  final response = await http.post(
    url,
    headers: {"Accept": "Application/json"},
    body: {"email": email, "password": password},
  );
  var convertedDataJson = jsonDecode(response.body);
  return convertedDataJson;
}



// String password = password;
// String email = email;

// authenticate(String email, String password) async {
//   String myurl = "http://arroda-api.arofah.org/v1/user/login";
//   http.post(myurl, headers: {
//     'Accept': 'application/json',
//     'authorization': 'password your key(optional)'
//   }, body: {
//     "email": email,
//     "password": password
//   }).then((response) {
//     print(response.statusCode);
//     print(response.body);
//   });
// }

// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//   Welcome({
//     this.id,
//     this.userId,
//     this.provinsi,
//     this.kabupaten,
//     this.kecamatan,
//     this.kelurahan,
//     this.noHp,
//   });

//   int id;
//   String userId;
//   String provinsi;
//   String kabupaten;
//   String kecamatan;
//   String kelurahan;
//   String noHp;

//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         id: json["id"],
//         userId: json["user_id"],
//         provinsi: json["provinsi"],
//         kabupaten: json["kabupaten"],
//         kecamatan: json["kecamatan"],
//         kelurahan: json["kelurahan"],
//         noHp: json["no_hp"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "user_id": userId,
//         "provinsi": provinsi,
//         "kabupaten": kabupaten,
//         "kecamatan": kecamatan,
//         "kelurahan": kelurahan,
//         "no_hp": noHp,
//       };
// }
