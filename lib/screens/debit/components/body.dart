import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'dart:async';
import 'package:AROODA/size_config.dart';
import 'package:AROODA/helper/keyboard.dart';
import 'package:AROODA/screens/sedekahshubuh/ss_screen.dart';
import '../../../components/default_button.dart';
import 'package:AROODA/screens/kebijakan_privasi/kp_screen.dart';

class NominalForm extends StatefulWidget {
  NominalForm();

  @override
  _NominalFormState createState() => _NominalFormState();
}

class _NominalFormState extends State<NominalForm> {
  final _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();

//  Initial SelectDate FLutter
  Future<Null> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Map<String, dynamic> formData;
  List<String> nominals = [
    '1.000',
    '2.000',
    '5.000',
    '10.000',
    '20.000',
    '50.000',
    '75.000',
    '100.000',
  ];
  List<String> tujuan = [
    'Masjid Baiturahman',
    'Masjid Al-Musri',
    'Masjid Nahjusallam',
    'Masjid Raya Bandung',
  ];
  _NominalFormState() {
    formData = {
      'Nominal': '000',
      'Tujuan': 'Masjid',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // titleSpacing: 99.0,
          title: Text(
            "Setting",
            style: new TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: const Icon(Icons.toggle_on, color: Color(0xff15C8A8)),
                    iconSize: 40.0,
                    tooltip: 'On',
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        _formKey.currentState.save();
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext dialogContext) =>
                                AlertDialog(
                                  content:
                                      Text('Sedekah Auto Debet Dinyalakan'),
                                ));
                      }
                    });
              },
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          color: Color(0xff203152),
          constraints: BoxConstraints.expand(),
          child: Form(
              key: _formKey,
              autovalidate: false,
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(height: SizeConfig.screenHeight * 0.00), // 4%
                  Image.asset(
                    "assets/image/Group318.png",
                    color: Colors.white,
                    width: 140,
                    height: 100,
                  ),
                  Text("Setting Jumlah Sedekah Auto Debet Anda"),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  Text(
                    'Nominal Sedekah                                                          ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  DropDownField(
                      value: formData['Nominal'],
                      items: nominals,
                      strict: false,
                      setter: (dynamic newValue) {
                        formData['Nominal'] = newValue;
                      }),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  Text(
                    'Tujuan Sedekah                                                              ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.01),
                  DropDownField(
                      value: formData['Tujuan'],
                      // icon: Icon(Icons.money),
                      // required: true,
                      // hintText: 'Pilih Tujuan Sedekah',
                      // labelText: 'Tujuan',
                      items: tujuan,
                      strict: false,
                      setter: (dynamic newValue) {
                        formData['Tujuan'] = newValue;
                      }),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  Text(
                    'Periode Sedekah                                                              ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mulai :',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${selectedDate.toLocal()}".split(' ')[0]),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff15C8A8),
                          ),
                          child: Row(
                            children: [
                              FlatButton(
                                onPressed: () => {
                                  _selectDate(context),
                                  print(selectedDate.day +
                                      selectedDate.month +
                                      selectedDate.year)
                                },
                                child: Text('Pilih Tanggal'),
                              ),
                            ],
                          ),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sampai :',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${selectedDate.toLocal()}".split(' ')[0]),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff15C8A8),
                          ),
                          child: Row(
                            children: [
                              FlatButton(
                                onPressed: () => {
                                  _selectDate(context),
                                  print(selectedDate.day +
                                      selectedDate.month +
                                      selectedDate.year)
                                },
                                child: Text('Pilih Tanggal'),
                              ),
                            ],
                          ),
                        ),
                      ]),
                  SizedBox(height: getProportionateScreenHeight(50)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultButton(
                        text: "Konfirmasi",
                        press: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            KeyboardUtil.hideKeyboard(context);
                            Navigator.pushNamed(context, OtpScreen.routeName);
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ))),
        ));
  }
}
