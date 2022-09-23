import 'package:flutter/material.dart';
import 'package:trial/Profile.dart';
import 'package:trial/Contacts.dart';
import 'package:trial/Weather.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Unicode Task App"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              height: 100.0,
              child: Text(
                "Welcome to the app created by Paarshva Chitaliya.Here you can view"
                " your own profile, view contacts, and check the weather using the "
                "buttons below.",
                textScaleFactor: 1.2,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              width: 250.0,
              height: 150.0,
              color: Colors.grey,
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Text(
                  "Profile",
                  textScaleFactor: 2.0,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.all(10.0),
                width: 250.0,
                height: 150.0,
                color: Colors.grey,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contacts()));
                  },
                  child: Text(
                    "Contacts",
                    textScaleFactor: 2.0,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10.0),
                width: 250.0,
                height: 150.0,
                color: Colors.grey,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Weather()));
                    },
                    child: Text(
                      "Weather",
                      textScaleFactor: 2.0,
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ));
  }
}
