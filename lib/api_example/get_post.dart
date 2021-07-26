import 'dart:convert';
import 'package:http/http.dart';
import '../api_example/get_post_model.dart';

class GetPost {
  final String getposturl = "http://arroda-user.konslat.com/users";

  //MENGAMBIL DATA
  Future<List<Post>> manggilPostData() async {
    Response res = await get(getposturl);
    //MENGUBAH JSON KE STRING
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //DATA DITAMPUNG KEDALAM LIST DIMODEL POST DAN DIRUBAH KE FORMAT JSON
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }
}

class GetApiProfile {
  final String getposturl = "http://arroda-user.konslat.com/users";

  //mengambil data
  Future<List<ApiProfile>> manggilPostData() async {
    Response res = await get(getposturl);
    //Merubah json ke string (raw)
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body)['data'];
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<ApiProfile> postData =
          body.map((dynamic item) => ApiProfile.fromJson(item)).toList();
      return postData;
    } else {
      throw "Tidak Bisa Get Data";
    }
  }
}