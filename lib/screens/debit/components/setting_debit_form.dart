// import 'package:flutter/material.dart';

// class DropDownDebit extends StatefulWidget {
//   const DropDownDebit();

//   @override
//   _DropDownDebitState createState() => _DropDownDebitState();
// }

// class _DropDownDebitState extends State<DropDownDebit> {
//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     var _chosenValue;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown list demo'),
//       ),
//       key: _formKey,
//       body: Container(
//         child: Center(
//           child: DropdownButton<String>(
//             value: _chosenValue,
//             underline: Container(
//                 // underline can be styled as well
//                 // height: 4.0,
//                 // color: Colors.blue,
//                 ), // this removes underline
//             icon: Icon(Icons.arrow_downward),
//             iconSize: 20.0, // can be changed, default: 24.0
//             iconEnabledColor: Colors.blue,
//             items: <String>['Google', 'Apple', 'Amazon', 'Tesla']
//                 .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child: Text(value),
//               );
//             }).toList(),
//             onChanged: (String value) {
//               setState(() {
//                 _chosenValue = value;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:dropdownfield/dropdownfield.dart';
// import 'dart:async';
// import 'package:AROODA/size_config.dart';

// class NominalForm extends StatefulWidget {
//   NominalForm();

//   @override
//   _NominalFormState createState() => _NominalFormState();
// }

// class _NominalFormState extends State<NominalForm> {
//   // Create a global key that will uniquely identify the Form widget and allow
//   // us to validate the form
//   final _formKey = GlobalKey<FormState>();
//   Map<String, dynamic> formData;
//   List<String> nominals = [
//     '1.000',
//     '2.000',
//     '5.000',
//     '10.000',
//     '20.000',
//     '50.000',
//     '75.000',
//     '100.000',
//   ];
//   _NominalFormState() {
//     formData = {
//       'Nominal': '1.000',
//     };
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: buildFutures(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           switch (snapshot.connectionState) {
//             default:
//               if (snapshot.hasError) {
//                 return Text(snapshot.error.toString());
//               } else {
//                 if (snapshot.data != null)
//                   return Scaffold(
//                       // appBar: AppBar(
//                       //   titleSpacing: 5.0,
//                       //   title: Text(
//                       //     'Custom Dropdown Field Example',
//                       //     style: TextStyle(fontSize: 15.0),
//                       //   ),
//                       //   actions: <Widget>[
//                       //     Builder(
//                       //       builder: (BuildContext context) {
//                       //         return IconButton(
//                       //             icon: const Icon(Icons.check),
//                       //             iconSize: 20.0,
//                       //             tooltip: 'Save',
//                       //             onPressed: () async {
//                       //               if (_formKey.currentState.validate()) {
//                       //                 _formKey.currentState.save();
//                       //                 _formKey.currentState.save();
//                       //                 showDialog<String>(
//                       //                     context: context,
//                       //                     builder:
//                       //                         (BuildContext dialogContext) =>
//                       //                             AlertDialog(
//                       //                               content: Text(
//                       //                                   'Data submitted is \n${formData.toString()}'),
//                       //                             ));
//                       //               }
//                       //             });
//                       //       },
//                       //     )
//                       //   ],
//                       // ),
//                       body: Container(
//                     color: Colors.white,
//                     constraints: BoxConstraints.expand(),
//                     child: Form(
//                         key: _formKey,
//                         autovalidate: false,
//                         child: SingleChildScrollView(
//                             child: Column(
//                           children: <Widget>[
//                             SizedBox(height: getProportionateScreenHeight(25)),
//                             DropDownField(
//                                 value: formData['Nominal'],
//                                 // icon: Icon(Icons.money),
//                                 required: true,
//                                 hintText: 'Pilih Nominal Sedekah',
//                                 labelText: 'Nominal',
//                                 items: nominals,
//                                 strict: false,
//                                 setter: (dynamic newValue) {
//                                   formData['City'] = newValue;
//                                 }),
//                           ],
//                         ))),
//                   ));
//                 else
//                   return LinearProgressIndicator();
//               }
//           }
//         });
//   }

//   Future<bool> buildFutures() async {
//     return true;
//   }
// }

// // class DropDown extends StatefulWidget {
// //   const DropDown({
// //     Key key,
// //     this.press,
// //   }) : super(key: key);
// //   final VoidCallback press;
// //   @override
// //   DropDownState createState() => DropDownState();
// // }

// // class Company {
// //   int id;
// //   String name;

// //   Company(this.id, this.name);

// //   static List<Company> getCompanies() {
// //     return <Company>[
// //       Company(1, 'Uang'),
// //       Company(2, 'Barang'),
// //       Company(3, 'Makanan'),
// //     ];
// //   }
// // }

// // class DropDownState extends State<DropDown> {
// //   final _formKey = GlobalKey<FormState>();

// //   List<Company> _companies = Company.getCompanies();
// //   List<DropdownMenuItem<Company>> _dropdownMenuItems;
// //   Company _selectedCompany;
// //   FocusNode pin2FocusNode;

// //   @override
// //   void initState() {
// //     _dropdownMenuItems = buildDropdownMenuItems(_companies);
// //     _selectedCompany = _dropdownMenuItems[0].value;
// //     super.initState();
// //   }

// //   List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
// //     List<DropdownMenuItem<Company>> items = List();
// //     for (Company company in companies) {
// //       items.add(
// //         DropdownMenuItem(
// //           value: company,
// //           child: Text(company.name),
// //         ),
// //       );
// //     }
// //     return items;
// //   }

// //   onChangeDropdownItem(Company selectedCompany) {
// //     setState(() {
// //       _selectedCompany = selectedCompany;
// //     });
// //   }  // final _formKey = GlobalKey<FormState>();
// //   Person selectedPerson;

// //   List<DropdownMenuItem> generateItems(List<Person> nominal) {
// //     List<DropdownMenuItem> items = [];
// //     for (var item in nominal) {
// //       items.add(DropdownMenuItem(
// //         child: Text(item.name),
// //         value: item,
// //       ));
// //     }
// //     return items;
// //   }

// //   String valueChoose;
// //   List nominal = [
// //     'item 1',
// //     'item 2',
// //     'item 3',
// //     'item 4',
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child:
// Container(
// //           padding: EdgeInsets.only(left: 16, right: 16),
// //           decoration: BoxDecoration(
// //               border: Border.all(color: Colors.grey, width: 1),
// //               borderRadius: BorderRadius.circular(15)),
// //           child: DropdownButton(
// //                           value: _selectedCompany,
// //                           items: _dropdownMenuItems,
// //                           onChanged: onChangeDropdownItem,
// //                         ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class FieldTujuan extends StatefulWidget {
// //   FieldTujuan({Key key, this.title}) : super(key: key);
// //   final String title;
// //   @override
// //   _FieldTujuanState createState() => _FieldTujuanState();
// // }

// // class _FieldTujuanState extends State<FieldTujuan> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return TextFormField(
// //       keyboardType: TextInputType.name,
// //       decoration: InputDecoration(
// //         fillColor: Colors.white,
// //         filled: true,
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(15),
// //           borderSide: BorderSide(color: Colors.grey),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(15),
// //           borderSide: BorderSide(color: Colors.grey),
// //         ),
// //         // labelText: "Email",
// //         hintText: "Tujuan Sedekah",
// //         // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
// //       ),
// //     );
// //   }
// // }

// // class FieldPeriode extends StatefulWidget {
// //   FieldPeriode({Key key, this.title}) : super(key: key);
// //   final String title;
// //   @override
// //   _FieldPeriodeState createState() => _FieldPeriodeState();
// // }

// // class _FieldPeriodeState extends State<FieldPeriode> {
// //   DateTime selectedDate = DateTime.now();

// // //  Initial SelectDate FLutter
// //   Future<Null> _selectDate(BuildContext context) async {
// //     // Initial DateTime FIinal Picked
// //     final DateTime picked = await showDatePicker(
// //         context: context,
// //         initialDate: selectedDate,
// //         firstDate: DateTime(2015, 8),
// //         lastDate: DateTime(2101));
// //     if (picked != null && picked != selectedDate)
// //       setState(() {
// //         selectedDate = picked;
// //       });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: EdgeInsets.only(left: 16, right: 16),
// //       decoration: BoxDecoration(
// //           border: Border.all(color: Colors.grey, width: 1),
// //           borderRadius: BorderRadius.circular(15)),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Text("${selectedDate.toLocal()}".split(' ')[0]),
// //           RaisedButton(
// //             onPressed: () => {
// //               _selectDate(context),
// //               print(selectedDate.day + selectedDate.month + selectedDate.year)
// //             },
// //             child: Text('Pilih Tanggal'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class Person {
// //   int id;
// //   String name;

// //   Person(this.id, this.name);

// //   static List<Person> getCompanies() {
// //     return <Person>[
// //       Person(1, "item 1"),
// //       Person(2, "item 2"),
// //       Person(3, "item 3"),
// //     ];
// //   }
// // }

// // // class DebitForm extends StatefulWidget {
// // //   @override
// // //   _DebitFormState createState() => _DebitFormState();
// // // }

// // // class _DebitFormState extends State<DebitForm> {
// // //   DateTime selectedDate = DateTime.now();

// // // //  Initial SelectDate FLutter
// // //   Future<Null> _selectDate(BuildContext context) async {
// // //     // Initial DateTime FIinal Picked
// // //     final DateTime picked = await showDatePicker(
// // //         context: context,
// // //         initialDate: selectedDate,
// // //         firstDate: DateTime(2015, 8),
// // //         lastDate: DateTime(2101));
// // //     if (picked != null && picked != selectedDate)
// // //       setState(() {
// // //         selectedDate = picked;
// // //       });
// // //   }

// // //   final _formKey = GlobalKey<FormState>();
// // //   String email;
// // //   String name;
// // //   String password;
// // //   String conform_password;
// // //   bool remember = false;
// // //   final List<String> errors = [];

// // //   void addError({String error}) {
// // //     if (!errors.contains(error))
// // //       setState(() {
// // //         errors.add(error);
// // //       });
// // //   }

// // //   void removeError({String error}) {
// // //     if (errors.contains(error))
// // //       setState(() {
// // //         errors.remove(error);
// // //       });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Form(
// // //       key: _formKey,
// // //       child: Column(
// // //         children: [
// // //           SizedBox(height: getProportionateScreenHeight(8)),
// // //           Text(
// // //             "Nominal Sedekah                                                        ",
// // //             style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
// // //           ),
// // //           buildNominalFormField(),
// // //           SizedBox(height: getProportionateScreenHeight(20)),
// // //           Text(
// // //             "Tujuan Sedekah                                                         ",
// // //             style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
// // //           ),
// // //           buildTujuanFormField(),
// // //           SizedBox(height: getProportionateScreenHeight(20)),
// // //           // buildPeriodeFormField(),
// // //           Text(
// // //             "Periode Sedekah                                                        ",
// // //             style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
// // //           ),
// // //           Row(
// // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //             children: [
// // //               Text("${selectedDate.toLocal()}".split(' ')[0]),
// // //               RaisedButton(
// // //                 onPressed: () => {
// // //                   _selectDate(context),
// // //                   print(
// // //                       selectedDate.day + selectedDate.month + selectedDate.year)
// // //                 },
// // //                 child: Text('Pilih Tanggal'),
// // //               ),
// // //             ],
// // //           ),
// // //           SizedBox(height: getProportionateScreenHeight(40)),
// // //           DefaultButton(
// // //             text: "Konfirmasi",
// // //             press: () {
// // //               if (_formKey.currentState.validate()) {
// // //                 _formKey.currentState.save();

// // //                 // Navigator.pushNamed(context, CompleteProfileScreen.routeName);
// // //               }
// // //             },
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   TextFormField buildPeriodeFormField() {
// // //     return TextFormField(
// // //       obscureText: true,
// // //       onSaved: (newValue) => name = newValue,
// // //       onChanged: (value) {},
// // //       decoration: InputDecoration(
// // //         fillColor: Colors.white,
// // //         filled: true,
// // //         enabledBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),
// // //         focusedBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),
// // //         // labelText: "Password",
// // //         // hintText: "Periode Sedekah",
// // //         floatingLabelBehavior: FloatingLabelBehavior.always,
// // //         // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
// // //       ),
// // //     );
// // //   }

// // //   TextFormField buildTujuanFormField() {
// // //     return TextFormField(
// // //       keyboardType: TextInputType.name,
// // //       onSaved: (newValue) => name = newValue,
// // //       onChanged: (value) {},
// // //       decoration: InputDecoration(
// // //         fillColor: Colors.white,
// // //         filled: true,
// // //         enabledBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),
// // //         focusedBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),
// // //         // labelText: "Email",
// // //         // hintText: "Tujuan Sedekah",
// // //         floatingLabelBehavior: FloatingLabelBehavior.always,
// // //         // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
// // //       ),
// // //     );
// // //   }

// // //   TextFormField buildNominalFormField() {
// // //     return TextFormField(
// // //       keyboardType: TextInputType.number,
// // //       onSaved: (newValue) => name = newValue,
// // //       decoration: InputDecoration(
// // //         fillColor: Colors.white,
// // //         filled: true,
// // //         enabledBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),
// // //         focusedBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(25),
// // //           borderSide: BorderSide(),
// // //         ),

// // //         // labelText: "Email",
// // //         // hintText: "Nominal Sedekah",
// // //         floatingLabelBehavior: FloatingLabelBehavior.always,
// // //         // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // void nextField(String value, FocusNode focusNode) {
// // // //   if (value.length == 1) {
// // // //     focusNode.requestFocus();
// // // //   }
// // // // }

// // // // class DropDownDebit extends StatefulWidget {
// // // //   static String routeName;

// // // //   const DropDownDebit({
// // // //     Key key,
// // // //     this.press,
// // // //   }) : super(key: key);
// // // //   final VoidCallback press;
// // // //   @override
// // // //   DropDownState createState() => DropDownState();
// // // // }

// // // // class Company {
// // // //   int id;
// // // //   String name;

// // // //   Company(this.id, this.name);

// // // //   static List<Company> getCompanies() {
// // // //     return <Company>[
// // // //       Company(1, 'Uang'),
// // // //       Company(2, 'Barang'),
// // // //       Company(3, 'Makanan'),
// // // //     ];
// // // //   }
// // // // }

// // // // class DropDownState extends State<DropDownDebit> {
// // // //   final _formKey = GlobalKey<FormState>();

// // // //   List<Company> _companies = Company.getCompanies();
// // // //   List<DropdownMenuItem<Company>> _dropdownMenuItems;
// // // //   Company _selectedCompany;
// // // //   FocusNode pin2FocusNode;

// // // //   @override
// // // //   void initState() {
// // // //     _dropdownMenuItems = buildDropdownMenuItems(_companies);
// // // //     _selectedCompany = _dropdownMenuItems[0].value;
// // // //     super.initState();
// // // //   }

// // // //   List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
// // // //     List<DropdownMenuItem<Company>> items = List();
// // // //     for (Company company in companies) {
// // // //       items.add(
// // // //         DropdownMenuItem(
// // // //           value: company,
// // // //           child: Text(company.name),
// // // //         ),
// // // //       );
// // // //     }
// // // //     return items;
// // // //   }

// // // //   onChangeDropdownItem(Company selectedCompany) {
// // // //     setState(() {
// // // //       _selectedCompany = selectedCompany;
// // // //     });
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return SizedBox(
// // // //       width: double.infinity,
// // // //       child: Padding(
// // // //         padding:
// // // //             EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
// // // //         child: SingleChildScrollView(
// // // //           child: Column(
// // // //             children: [
// // // //               SizedBox(height: SizeConfig.screenHeight * 0.05),
// // // //               Image.asset(
// // // //                 "assets/image/Group318.png",
// // // //                 color: Colors.white,
// // // //                 width: 140,
// // // //                 height: 100,
// // // //               ),
// // // //               SizedBox(height: getProportionateScreenHeight(10)),
// // // //               Text("Setting Jumlah Sedekah Auto Debet Anda"),
// // // //               SizedBox(height: getProportionateScreenHeight(50)),
// // // //               Text("Nominal Sedekah                                        "),
// // // //               SizedBox(
// // // //                 width: getProportionateScreenWidth(299),
// // // //                 height: getProportionateScreenWidth(48),
// // // //                 child: TextFormField(
// // // //                   style: TextStyle(fontSize: 18, color: Colors.black),
// // // //                   keyboardType: TextInputType.number,
// // // //                   // textAlign: TextAlign.center,
// // // //                   decoration: InputDecoration(
// // // //                     fillColor: Colors.white,
// // // //                     filled: true,
// // // //                     enabledBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     focusedBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     // labelText: "Nominal Sedekah ",
// // // //                     // hintText: "Nominal Sedekah",
// // // //                     floatingLabelBehavior: FloatingLabelBehavior.always,
// // // //                     // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
// // // //                   ),
// // // //                   onChanged: (value) {
// // // //                     nextField(value, pin2FocusNode);
// // // //                   },
// // // //                 ),
// // // //               ),
// // // //               SizedBox(height: getProportionateScreenHeight(20)),
// // // //               Text("Tujuan Sedekah                                           "),
// // // //               SizedBox(
// // // //                 width: getProportionateScreenWidth(299),
// // // //                 height: getProportionateScreenWidth(48),
// // // //                 child: TextFormField(
// // // //                   style: TextStyle(fontSize: 18, color: Colors.black),
// // // //                   keyboardType: TextInputType.name,
// // // //                   // textAlign: TextAlign.center,
// // // //                   decoration: InputDecoration(
// // // //                     fillColor: Colors.white,
// // // //                     filled: true,
// // // //                     enabledBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     focusedBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     // labelText: "Tujuan Sedekah",
// // // //                     // hintText: "Tujuan Sedekah",
// // // //                     floatingLabelBehavior: FloatingLabelBehavior.always,
// // // //                     // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
// // // //                   ),
// // // //                   onChanged: (value) {
// // // //                     nextField(value, pin2FocusNode);
// // // //                   },
// // // //                 ),
// // // //               ),
// // // //               SizedBox(height: getProportionateScreenHeight(20)),
// // // //               Text(
// // // //                   " Periode Sedekah                                           "),
// // // //               SizedBox(
// // // //                 width: getProportionateScreenWidth(299),
// // // //                 height: getProportionateScreenWidth(48),
// // // //                 child: TextFormField(
// // // //                   style: TextStyle(fontSize: 18, color: Colors.black),
// // // //                   keyboardType: TextInputType.name,
// // // //                   // textAlign: TextAlign.center,
// // // //                   decoration: InputDecoration(
// // // //                     fillColor: Colors.white,
// // // //                     filled: true,
// // // //                     enabledBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     focusedBorder: OutlineInputBorder(
// // // //                       borderRadius: BorderRadius.circular(25),
// // // //                       borderSide: BorderSide(),
// // // //                     ),
// // // //                     // labelText: "Tujuan Sedekah",
// // // //                     // hintText: "Tujuan Sedekah",
// // // //                     floatingLabelBehavior: FloatingLabelBehavior.always,
// // // //                     // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
// // // //                   ),
// // // //                   onChanged: (value) {
// // // //                     nextField(value, pin2FocusNode);
// // // //                   },
// // // //                 ),
// // // //               ),
// // // //               Row(
// // // //                 children: [
// // // //                   Checkbox(value: false, onChanged: (value) {}),
// // // //                   Text(
// // // //                     'Dengan ini anda menyetujui Kebijakan & Privasi.',
// // // //                     style: TextStyle(fontSize: 16.0, fontFamily: "NeoSansBold"),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //               SizedBox(height: getProportionateScreenHeight(20)),
// // // //               DefaultButton(
// // // //                 text: "Konfirmasi",
// // // //                 press: () {
// // // //                   if (_formKey.currentState.validate()) {
// // // //                     _formKey.currentState.save();

// // // //                     // Navigator.pushNamed(context, OtpScreen.routeName);
// // // //                   }
// // // //                 },
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class MyHomePage extends StatefulWidget {
// // // //   MyHomePage({Key key, this.title}) : super(key: key);
// // // //   final String title;

// // // //   @override
// // // //   _MyHomePageState createState() => _MyHomePageState();
// // // // }

// // // // class _MyHomePageState extends State {
// // // //   List _colors = ['red', 'green', 'blue', 'orange'];
// // // //   var resultsList = new List.filled(3, '');
// // // //   var value;

// // // //   @override
// // // //   void initState() {
// // // //     resultsList[0] = 'red';
// // // //     return super.initState();
// // // //   }

// // // //   _fieldDropDown(List theList, int resultPosition, var dbField) {
// // // //     return new FormField(
// // // //       builder: (FormFieldState state) {
// // // //         return InputDecorator(
// // // //           decoration: InputDecoration(),
// // // //           child: new DropdownButtonHideUnderline(
// // // //             child: new DropdownButton(
// // // //               value: this.resultsList[resultPosition],
// // // //               isDense: true,
// // // //               onChanged: (newValue) {
// // // //                 setState(() {
// // // //                   this.resultsList[resultPosition] = newValue;

// // // //                   state.didChange(newValue);

// // // //                   print(
// // // //                       'The List result = ' + this.resultsList[resultPosition]);
// // // //                 });
// // // //               },
// // // //               items: theList.map((value) {
// // // //                 return new DropdownMenuItem(
// // // //                   value: value,
// // // //                   child: new Text(value),
// // // //                 );
// // // //               }).toList(),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       },
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return new Scaffold(
// // // //       body: new SafeArea(
// // // //           top: false,
// // // //           bottom: false,
// // // //           child: new Form(
// // // //               //key: _formKey,
// // // //               autovalidate: true,
// // // //               child: new ListView(
// // // //                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
// // // //                 children: [
// // // //                   _fieldDropDown(_colors, 0, 'colorDBfield'),
// // // //                 ],
// // // //               ))),
// // // //     );
// // // //   }
// // // // }
