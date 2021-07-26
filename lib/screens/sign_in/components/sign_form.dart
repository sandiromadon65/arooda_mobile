import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:AROODA/components/form_error.dart';
import 'package:AROODA/helper/keyboard.dart';
import 'package:AROODA/screens/home/home_screen.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import 'package:http/http.dart' as http;
import '../../../size_config.dart';
import 'package:AROODA/api_example/user_model.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  bool isApiCallProcess = false;
  LoginRequestModel requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = new LoginRequestModel();
  }

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
          buildEmailFormField(),
          SizedBox(
            height: 20,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: 20,
          ),
          FormError(errors: errors),
          DefaultButton(
            text: "Login",
            press: () {
              // login();

              if (validateAndSave()) {
                setState(() {
                  isApiCallProcess = true;
                });

                APIService apiService = new APIService();
                apiService.login(requestModel).then((value) {
                  setState(() {
                    isApiCallProcess = false;
                  });

                  if (value.token.isNotEmpty) {
                    final snackBar = SnackBar(
                      content: Text("Login Berhasil"),
                    );
                    var scaffoldKey;
                    scaffoldKey.currentState.showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                      content: Text(value.error),
                    );
                    var scaffoldKey;
                    scaffoldKey.currentState.showSnackBar(snackBar);
                  }
                });

                print(requestModel.toJson());
                KeyboardUtil.hideKeyboard(context);
                Navigator.pushNamed(context, HomeScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      // onSaved: (input) => requestModel.password = input,
      validator: (input) =>
          input.length < 8 ? "Password Harus lebih 8 Karakter" : null,
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
        hintText: "Input Password",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // onSaved: (input) => requestModel.email = input,
      validator: (input) =>
          !input.contains("@") ? "Email Id Harus Valid" : null,
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
        hintText: "Input Email",
        // suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  // Future<void> login() async {
  //   if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
  //     var response = await http.post(
  //         Uri.parse("http://arroda-api.arofah.org/v1/user/login"),
  //         body: ({
  //           'email': emailController.text,
  //           'password': passwordController.text
  //         }));
  //     if (response.statusCode == 200) {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: Text("Invalid Credentials.")));
  //     }
  //   } else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text("Black Field  Not Allowed.")));
  //   }
  // }
}
