import 'dart:html';

import 'package:flutter/material.dart';
import 'package:scholarship_hub/login_page.dart';
import 'package:scholarship_hub/news_updates.dart';
import 'package:scholarship_hub/bio_page.dart';
import 'package:scholarship_hub/add_application.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonDashboard = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Dashboard',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Colors.black87,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()))
          },
        ),
      ),
    );

    final buttonAddApplication = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Add Application',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(228, 242, 125, 29),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AddApplication()))
          },
        ),
      ),
    );

    final buttonBio = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child:
              Text('Bio', style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 145, 230, 221),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Bio()))
          },
        ),
      ),
    );

    final buttonNewsandUpdates = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('News/Updates',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 145, 230, 221),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewsandUpdates()))
          },
        ),
      ),
    );
    final description = Padding(
      padding: EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text:
                'Welcome to your dashboard.\nYou will find scholarships you have applied to or are currently applying to here.\nOops! Looks like you have not added any applications yet.',
            style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );

    final buttonLogout = FlatButton(
        child: Text(
          'Logout',
          style: TextStyle(color: Colors.black87, fontSize: 16),
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        });

    return SafeArea(
        child: Scaffold(
      body: Container(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            Row(
              children: [buttonDashboard, buttonBio, buttonNewsandUpdates],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            description,
            buttonAddApplication,
            buttonLogout
          ],
        ),
      ),
    ));
  }
}
