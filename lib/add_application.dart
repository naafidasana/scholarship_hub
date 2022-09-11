import 'package:flutter/material.dart';
import 'package:scholarship_hub/dasboard.dart';

class AddApplication extends StatelessWidget {
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

    final description = Padding(
      padding: EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
            text:
                'Sorry. No scholarship applications are open yet.\nWe\'ll notify you when a slot opens up.',
            style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[description, buttonDashboard],
        ),
      ),
    ));
  }
}
