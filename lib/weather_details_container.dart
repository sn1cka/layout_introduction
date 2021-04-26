import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherDetails extends StatelessWidget {
  String weatherState = 'Sunny';
  var temp = 33;
  var tempMax = 35;
  var tempMin = 27;
  var airHumidity = 49;
  var bars = 1.007;
  var windSpeed = 23;
  var sunrise = '6:03';
  var sunset = '7:05';
  var dayTime = '13h 1m';

  @override
  Widget build(BuildContext context) {
    List<Widget> item = [
      SizedBox(height: 20),
      Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Text(
                '$temp',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 64, letterSpacing: 1),
              )),
          Expanded(
              flex: 1,
              child: Column(children: [
                Text(
                  '$tempMax°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '$tempMin°C',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )
              ]))
        ],
      ),
      SizedBox(height: 40),
      Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.settings_input_antenna_sharp),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ]))
        ],
      ),
      SizedBox(height: 40),
      Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Icon(Icons.wb_sunny_outlined),
                Text(
                  weatherState,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ]))
        ],
      ),
      SizedBox(height: 40)
    ];

    return Column(children: item);
  }
}
