import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'package:AROODA/screens/cart/cart_screen.dart';
import '../../../constants.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void nextField(String value, FocusNode focusNode) {
  if (value.length == 1) {
    focusNode.requestFocus();
  }
}

class DropDownUang extends StatefulWidget {
  static String routeName;

  const DropDownUang({
    Key key,
    this.press,
  }) : super(key: key);
  final VoidCallback press;
  @override
  DropDownUangState createState() => DropDownUangState();
}

class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Uang'),
    ];
  }
}

class DropDownUangState extends State<DropDownUang> {
  final _formKey = GlobalKey<FormState>();

  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;
  FocusNode pin2FocusNode;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff203152),
        title: Text(
          "Sedekah Uang",
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(2),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Saldo Anda :",
                      style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: "NeoSansBold"),
                    ),
                    Text(
                      "      Rp. 750.000 ",
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontFamily: "NeoSansBold",
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 29.0,
                      width: 100.0,
                      padding: EdgeInsets.all(6.0),
                      decoration: new BoxDecoration(
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(100.0)),
                          color: Color(0xff0F2B55)),
                      alignment: Alignment.center,
                      child: new Text(
                        "Top Up",
                        style: new TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontFamily: "NeoSansBold",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: new BoxDecoration(
                    color: Colors.teal[400],
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ), //Offset
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Barangsiapa meminjami Allah dengan pinjaman yang baik maka Allah akan melipatgandakan ganti kepadanya dengan banyak. Allah menahan dan melapangkan (Rezeki), dan kepada-Nya lah kamu dikembalikan. - (QS Al-Baqarah: 245).",
                    style: new TextStyle(
                      fontSize: 13.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 400,
              padding: EdgeInsets.all(15),
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ), //Offset
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30.0,
                        width: 130.0,
                        padding: EdgeInsets.all(6.0),
                        decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all(
                                new Radius.circular(100.0)),
                            color: Color(0xff0F2B55)),
                        alignment: Alignment.center,
                        child: new Text(
                          "Ayo Berwakaf",
                          style: new TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                            fontFamily: "NeoSansBold",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // Container(
                      //   height: 30,
                      //   width: 128,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(3),
                      //     color: Color(0xff0F2B55),
                      //   ),
                      //   child: SwitchListTile(
                      //     value: true,
                      //     activeTrackColor: Colors.grey,
                      //     activeColor: Colors.blueAccent,
                      //     onChanged: (value) {},
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Jenis Wakaf",
                                style: new TextStyle(
                                  fontSize: 17.0,
                                  color: Colors.black,
                                  fontFamily: "NeoSansBold",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              DropdownButton(
                                value: _selectedCompany,
                                items: _dropdownMenuItems,
                                onChanged: onChangeDropdownItem,
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(10)),
                              Row(
                                children: [
                                  Text(
                                    "Jumlah",
                                    style: new TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black,
                                      fontFamily: "NeoSansBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Rp. ",
                                    style: new TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black,
                                      fontFamily: "NeoSansBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(305),
                                    height: getProportionateScreenWidth(40),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        filled: true,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(3),
                                          borderSide: BorderSide(),
                                        ),
                                        hintText: "",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new GestureDetector(
                                    onTap: () {
                                      Route route = MaterialPageRoute(
                                          builder: (context) =>
                                              PembayaranScreen());
                                      Navigator.push(context, route);
                                    },
                                    child: Container(
                                      height: 39.0,
                                      width: 315.0,
                                      padding: EdgeInsets.all(6.0),
                                      decoration: new BoxDecoration(
                                        color: Color(0xff0F2B55),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      alignment: Alignment.center,
                                      child: new Text(
                                        "Wakafkan",
                                        style: new TextStyle(
                                          fontSize: 17.0,
                                          color: Colors.white,
                                          fontFamily: "NeoSansBold",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: getProportionateScreenHeight(7)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Perhatian !!! \nUntuk mengaktifkan Sedekah Shubuh otomatis, Silahkan\naktifkan button Auto Debet diatas\nMaka sistem akan otomatis mengambil sedekah dari\nSaldo Anda sesuai ketentuan yang berlaku. ",
                                    style: new TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
