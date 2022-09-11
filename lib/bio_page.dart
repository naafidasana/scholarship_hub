import 'package:flutter/material.dart';
import 'package:scholarship_hub/login_page.dart';
import 'package:scholarship_hub/dasboard.dart';
import 'package:scholarship_hub/news_updates.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonDashboard = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Dashboard',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 145, 230, 221),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()))
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
          color: Colors.black87,
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
                'Find and fill in requisite personal/bio data in the forms provided below.',
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

    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputPhoneNumber = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Phone Number',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputFirstName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'First Name',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputMiddleName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Middle Name',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputLastName = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Last Name',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final inputDoB = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Date of Birth: dd/mm/yyyy',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final buttonSubmit = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Submit',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          color: Color.fromARGB(167, 145, 230, 221),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Dashboard()))
          },
        ),
      ),
    );

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
            inputFirstName,
            inputMiddleName,
            inputLastName,
            inputEmail,
            inputPhoneNumber,
            inputDoB,
            buttonSubmit
          ],
        ),
      ),
    ));
  }
}
