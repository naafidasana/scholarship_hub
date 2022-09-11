import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:scholarship_hub/dasboard.dart';
import 'package:scholarship_hub/signup.dart';

final HashMap<String, String> registeredUsers = HashMap();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();
    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    TextEditingController passwordController = new TextEditingController();
    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: passwordController,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );
    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Login',
              style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Colors.black87,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            if (registeredUsers[emailController.text] ==
                passwordController.text)
              {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Dashboard()))
              }
            else
              {
                const AlertDialog(
                  title: Text('Login not successful.'),
                  content: Text(
                      'Email and/or Password don\'t match.\nCorrect errors or sign up.'),
                ),
                Future.delayed(Duration(seconds: 2)),
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()))
              }
          },
        ),
      ),
    );

    final buttonSignUp = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Create New Account',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 238, 143, 11),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SignUpPage()))
          },
        ),
      ),
    );

    final buttonAlternateLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Continue With Facebook',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 4, 90, 210),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {null},
        ),
      ),
    );
    final buttonForgotPassword = FlatButton(
        child: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        onPressed: null);
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            //logo,
            inputEmail,
            inputPassword,
            buttonLogin,
            Row(
              children: [buttonSignUp, buttonAlternateLogin],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
            buttonForgotPassword
          ],
        ),
      ),
    ));
  }
}
