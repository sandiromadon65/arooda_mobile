// import 'package:flutter/material.dart';
// import '../../../size_config.dart';
// import 'title.dart';

// class MediaDakwah extends StatelessWidget {
//   const MediaDakwah({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(getProportionateScreenWidth(0)),
//       child: Container(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: getProportionateScreenWidth(8)),
//               child: SectionTitle(
//                 title: "  Media Dakwah",
//                 press: () {},
//               ),
//             ),
//             Container(
//               height: 140,
//               width: double.infinity,
//               margin: EdgeInsets.all(getProportionateScreenWidth(10)),
//               padding: EdgeInsets.all(getProportionateScreenWidth(10)),
//               decoration: new BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(13),
//               ),
//               child: Column(
//                 children: <Widget>[
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       new Text(""),
//                       new Text(""),
//                       new Text(
//                         "Permudah Segala Urusan Dengan Sedekah.",
//                         style: TextStyle(
//                             fontSize: getProportionateScreenWidth(19),
//                             color: Colors.black,
//                             fontFamily: "NeoSansBold",
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );

//     // Column(
//     //   children: [
//     //     Padding(
//     //       padding:
//     //           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//     //       child: SectionTitle(
//     //         title: "Media Dakwah",
//     //         press: () {},
//     //       ),
//     //     ),
//     //     SizedBox(height: getProportionateScreenWidth(10)),
//     //     Container(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           DakwahCard(
//     //             text: "assets/image/dakwah2.jpg",
//     //             category: "Dakwah 2",
//     //             // numOfBrands: 24,
//     //             press: () {},
//     //           ),
//     //           SizedBox(width: getProportionateScreenWidth(20)),
//     //         ],
//     //       ),
//     //     ),
//     //   ],
//     // );
//   }
// }

// class DakwahCard extends StatelessWidget {
//   const DakwahCard({
//     Key key,
//     @required this.category,
//     @required this.text,
//     // @required this.numOfBrands,
//     @required this.press,
//   }) : super(key: key);

//   final String category, text;
//   // final int numOfBrands;
//   final GestureTapCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
//       child: GestureDetector(
//         onTap: press,
//         child: SizedBox(
//           width: getProportionateScreenWidth(335),
//           height: getProportionateScreenWidth(170),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Color(0xFFABC9CF).withOpacity(0.4),
//                         Color(0xFF343434).withOpacity(0.15),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(15.0),
//                     vertical: getProportionateScreenWidth(10),
//                   ),
//                   child: Text.rich(
//                     TextSpan(
//                       style: TextStyle(color: Colors.white),
//                       children: [
//                         TextSpan(
//                           text: "$category\n",
//                           style: TextStyle(
//                             fontSize: getProportionateScreenWidth(18),
//                             // fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         // TextSpan(text: "$numOfBrands Brands")
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../../size_config.dart';
import "title.dart";

class MediaDakwah extends StatelessWidget {
  const MediaDakwah({
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
            title: "  Media Dakwah",
            press: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DakwahCard(
                image: "assets/image/dakwah2.jpg",
                category: "Dakwah 1",
                text: "Permudah Segala Urusan Dengan Sedekah.",
                // numOfBrands: 0,
                press: () {},
              ),
              DakwahCard(
                image: "assets/image/dakwah.jpg",
                category: "Dakwah 2",
                text:
                    "Sedekah-kan Sebagian Harta Kita Kepada Yang Membutuhkan.",
                // numOfBrands: 0,
                press: () {},
              ),
              SizedBox(width: 20),
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
    @required this.category,
    @required this.image,
    @required this.text,
    // @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  final String text, category, image;
  // final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 320,
          height: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 50,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$text\n",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
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
