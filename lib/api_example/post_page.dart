import 'package:AROODA/api_example/get_post.dart';
import 'get_post_model.dart';
import 'get_post.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  static String routeName = "/api_example";
  @override
  Widget build(BuildContext context) {
    final GetApiProfile _getApiProfile = new GetApiProfile();

    return Scaffold(
      body: FutureBuilder(
        future: _getApiProfile.manggilPostData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ApiProfile>> snapshot) {
          if (snapshot.hasData) {
            List<ApiProfile> dataPost = snapshot.data;
            return Container(
              child: ListView.builder(
                itemCount: dataPost.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green[200], Colors.blue[200]]),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Column(
                              children: [],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            width: 125,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.orange[50],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '',
                                    ),
                                    Text(
                                      'User ID',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.orange,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataPost[index].user_id.toString(),
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20.0),
                            margin: EdgeInsets.all(20.0),
                            width: 125,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '',
                                    ),
                                    Text(
                                      'No.Hp',
                                      style: new TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataPost[index].no_hp.toString(),
                                      style: new TextStyle(
                                          fontSize: 15.0, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

// class PostPage extends StatelessWidget {
//   final GetPost _getPost = new GetPost();
//   static String routeName = "/api_example";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Get Data dari API'),
//       ),
//       body: FutureBuilder(
//           future: _getPost.manggilPostData(),
//           builder: (context, AsyncSnapshot<List<Post>> snapshot) {
//             List<Post> dataPost = snapshot.data;
//             return Container(
//               child: Column(
//                 children: [
//                   SizedBox(height: 20),
//                   Card(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(10),
//                       color: Colors.red[800],
//                       child: ListTile(
//                         title: Text(
//                           dataPost[0].provinsi,
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Card(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(10),
//                       color: Colors.red[800],
//                       child: ListTile(
//                         title: Text(
//                           dataPost[0].no_hp.toString(),
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Card(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(10),
//                       color: Colors.red[800],
//                       child: ListTile(
//                         title: Text(
//                           dataPost[0].user_id.toString(),
//                           style: TextStyle(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           }),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class User {
//   String id;
//   String is_sedekahsubuh;
//   String no_hp;

//   User({this.id, this.is_sedekahsubuh, this.no_hp});

//   factory User.createUser(Map<String, dynamic> object) {
//     return User(
//         id: object['id'],
//         is_sedekahsubuh: object['is_sedekahsubuh'],
//         no_hp: object['no_hp'].toString());
//   }

//   static Future<User> connectToAPI(String id) async {
//     String apiURL = "http://arroda-user.konslat.com/users" + id;

//     var apiResult = await http.get(apiURL);
//     var jsonObject = json.decode(apiResult.body);
//     var userData = (jsonObject as Map<String, dynamic>)['data'];

//     return User.createUser(userData);
//   }
// }

// class PostPage extends StatefulWidget {
//   static var routeName;

//   @override
//   _PostPageState createState() => _PostPageState();
// }

// class _PostPageState extends State<PostPage> {
//   User user = null;
//   static String routeName = "/api_example";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Example Get API"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text((user != null)
//                   ? user.id +
//                       " || " +
//                       user.is_sedekahsubuh +
//                       " || " +
//                       user.no_hp
//                   : "Tidak Ada Data"),
//               RaisedButton(
//                 onPressed: () {
//                   User.connectToAPI("2").then((value) {
//                     user = value;
//                     setState(() {});
//                   });
//                 },
//                 child: Text("GET API"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
