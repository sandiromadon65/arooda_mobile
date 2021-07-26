import 'package:flutter/foundation.dart';

class Post {
  //DEFINISIK AN KEY NYA
  final String provinsi;
  final int no_hp;
  final int user_id;

  //DEFINISI KANKE OBJECT
  Post({
    @required this.provinsi,
    @required this.no_hp,
    @required this.user_id,
  });

  //MENAMPUNG DATA DENGAN FORMAT JSON
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      provinsi: json['data']['provinsi'] as String,
      no_hp: json['data']['no_hp'] as int,
      user_id: json['data']['user_id'] as int,
    );
  }
}

class ApiProfile {
  //definisikan key nya
  final int user_id;
  final String provinsi;
  final String kabupaten;
  final String kecamatan;
  final String kelurahan;
  final int no_hp;

  //definisikan ke object
  ApiProfile({
    @required this.user_id,
    @required this.provinsi,
    @required this.kabupaten,
    @required this.kecamatan,
    @required this.kelurahan,
    @required this.no_hp,
  });

  factory ApiProfile.fromJson(Map<String, dynamic> json) {
    return ApiProfile(
      user_id: json['user_id'] as int,
      provinsi: json['provinsi'] as String,
      kabupaten: json['kabupaten'] as String,
      kecamatan: json['kecamatan'] as String,
      kelurahan: json['kelurahan'] as String,
      no_hp: json['no_hp'] as int,
    );
  }
}
