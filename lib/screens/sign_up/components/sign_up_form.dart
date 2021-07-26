import 'package:flutter/material.dart';
import 'package:AROODA/components/default_button.dart';
import 'package:AROODA/components/form_error.dart';
import 'package:AROODA/screens/debit/debit_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:AROODA/screens/complete_profile/complete_profile_screen.dart';
import 'package:AROODA/screens/sedekahshubuh/components/setting_debit_form.dart';
import '../../../constants.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

Future<DataModel> submitData(String userId, String name, String email,
    String password, String password_confirmation, String noHp) async {
  var APIURL = "http://arroda-api.arofah.org/v1/users";
  //json maping user entered details
  Map mapeddate = {
    'user_id': userId,
    'name': name,
    'email': email,
    'password': password,
    'password_confirmation': password_confirmation,
    'no_hp': noHp,
  };
  //send  data using http post to our php code
  http.Response reponse = await http.post(APIURL, body: mapeddate);

  //getting response from php code, here
  // var data = jsonDecode(reponse.body);
  // print("DATA: ${data}");
  var data = jsonDecode(reponse.body);
  print(data);
}

void dataModelFromJson(String responseString) {}

class DataModel {}

class _SignUpFormState extends State<SignUpForm> {
  DataModel _dataModel;
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password_confirmationController =
      TextEditingController();
  TextEditingController noHpController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String userId;
  String noHp;
  String email;
  String name;
  String password;
  String password_confirmation;
  bool remember = false;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: 20),
          buildEmailFormField(),
          SizedBox(height: 20),
          buildPasswordFormField(),
          SizedBox(height: 20),
          buildPasswordConfirmFormField(),
          SizedBox(height: 20),
          buildnoHpFormField(),
          SizedBox(height: 20),
          FormError(errors: errors),
          SizedBox(height: 15),
          DefaultButton(
            text: "Daftar",
            press: () async {
              // RegistrationUser();
              String userId = userIdController.text;
              String name = nameController.text;
              String email = emailController.text;
              String password = passwordController.text;
              String password_confirmation =
                  password_confirmationController.text;
              String noHp = noHpController.text;

              DataModel data = await submitData(
                  userId, name, email, password, password_confirmation, noHp);
              setState(() {
                _dataModel = data;
              });
              Navigator.pushNamed(context, DebitScreen.routeName);
              // if (_formKey.currentState.validate()) {

              //   _formKey.currentState.save();
              //   KeyboardUtil.hideKeyboard(context);

              // }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildnoHpFormField() {
    return TextFormField(
      controller: noHpController,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => noHp = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),

        // labelText: "Email",
        hintText: "No Hp",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPasswordConfirmFormField() {
    return TextFormField(
      controller: password_confirmationController,
      obscureText: true,
      onSaved: (newValue) => password_confirmation = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Password",
        hintText: "Password Confirmation",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Password",
        hintText: "Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        // labelText: "Email",
        hintText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      controller: nameController,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),

        // labelText: "Email",
        hintText: "Nama Lengkap",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildUserFormField() {
    return TextFormField(
      controller: userIdController,
      keyboardType: TextInputType.number,
      onSaved: (newValue) => userId = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
          borderSide: BorderSide(),
        ),

        // labelText: "Email",
        hintText: "User ID",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
