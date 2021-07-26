// import 'package:flutter/material.dart';
// import '../../../size_config.dart';
// import 'title.dart';

// class Informasi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SectionTitle(
//             title: "Informasi",
//             press: () {},
//           ),
//         ),
//         SizedBox(height: getProportionateScreenWidth(10)),
//         Container(
//           child: Row(
//             children: [
//               Card(
//                 child: Container(
//                   width: 150.0,
//                   height: 140.0,
//                   margin: EdgeInsets.all(getProportionateScreenWidth(10)),
//                   padding: EdgeInsets.symmetric(
//                     vertical: getProportionateScreenWidth(15),
//                   ),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/image/dakwah2.jpg"),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),
//               Card(
//                 child: Container(
//                   width: 150.0,
//                   height: 140.0,
//                   margin: EdgeInsets.all(getProportionateScreenWidth(10)),
//                   padding: EdgeInsets.symmetric(
//                     vertical: getProportionateScreenWidth(15),
//                   ),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("assets/image/dakwah2.jpg"),
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//               ),

//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../size_config.dart';
import "title.dart";

class Informasi extends StatelessWidget {
  const Informasi({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(8)),
          child: SectionTitle(
            title: "  Informasi",
            press: () {},
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DakwahCard(
                image: "assets/image/dakwah2.jpg",
                // category: "Senin/12-07-2021",
                text:
                    "Jadwal Kajian Hari Ini\nPukul 19:00 WIB\nMasjid Al-Amanah\nUst Fajri",
                // numOfBrands: 0,
                press: () {},
              ),
              DakwahCard(
                image: "assets/image/dakwah.jpg",
                // category: "Rabu/14-07-2021",
                text:
                    "Pembangunan Rumah Tahfidz Bersama AROODA\nTanggal 21-07-2021\nPukul 08:00 WIB",
                // numOfBrands: 0,
                press: () {},
              ),
              DakwahCard(
                image: "assets/image/dakwah.jpg",
                // category: "Selasa/20-07-2021",
                text:
                    "Acara Shalat Idul Adha\nTanggal 20-07-2021\ndi Masjid Al-Munawawar\nPukul 07:00 WIB",
                // numOfBrands: 0,
                press: () {},
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class DakwahCard extends StatelessWidget {
  const DakwahCard({
    Key key,
    // @required this.category,
    @required this.text,
    @required this.image,
    // @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String image, text;
  // final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 160,
          height: 130,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                // Image.asset(
                //   image,
                //   fit: BoxFit.cover,
                // ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 23,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        // TextSpan(
                        //   text: "$category\n",
                        //   style: TextStyle(
                        //     fontSize: 13,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                        TextSpan(
                          text: "$text\n",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "12 Juli 2021",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
