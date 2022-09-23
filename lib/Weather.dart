import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

WeatherFactory wf = new WeatherFactory('c1fe5cd49b5467294d552fa4f533122a');

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Weather"),
          centerTitle: true,
          backgroundColor: Colors.grey,
          elevation: 0.0,
        ),
        body: Container(
            padding: EdgeInsets.only(left: 25.0, top: 25.0, right: 16.0),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SizedBox(
                width: 200.0,
                height: 100.0,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Enter City",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
              ),
            )));
  }
}
