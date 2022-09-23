import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 0.0,
        ),
      body: Container(
        padding: EdgeInsets.only(left:25.0,top:25.0,right:16.0),
        child: GestureDetector(
          onTap:(){ FocusScope.of(context).unfocus();},
          child: ListView(
            children: <Widget>[
              Text("Enter details",textScaleFactor: 2.0,),
              SizedBox(
                width: 200.0,
                height: 50.0),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "First Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
            decoration: InputDecoration(
                labelText: "Date-Of-Birth",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                )
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                decoration: InputDecoration(
                labelText: "Email Address",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "SAP ID",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              )
                ],
          ),
        ),
      ),
    );
  }
}


