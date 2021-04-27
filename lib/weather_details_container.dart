import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_introduction/detailed_weather_data_model.dart';

import 'horizontal_weateher_details.dart';

class WeatherDetails extends StatelessWidget {
  WeatherDetails(this.data) {
    // this.weatherState = data.weather.first.description;
    this.temp = data.main.temp;
    // this.tempMax = data.main.tempMax;
    // this.tempMin = data.main.tempMin;
  }

  String weatherState = '';
  num temp = 27;
  var tempMax = 22;
  var tempMin = 23;
  var airHumidity = 49;
  var bars = 1.007;
  var windSpeed = 23;
  var sunrise = '6:03';
  var sunset = '7:05';
  var dayTime = '13h 1m';

  final DetailedWeatherDataModel data;

  @override
  Widget build(BuildContext context) {
    List<WeatherDetailModel> itemList = [];
    var weatherItem = WeatherDetailModel(
        dayOfWeek: 'Monday',
        temp: 21,
        icon: Icon(Icons.wb_cloudy),
        tempMax: 25,
        tempMin: 13);

    for (int i = 0; i < 10; i++) {
      itemList.add(weatherItem);
    }

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
                  '$tempMax°C↑',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '$tempMin°C↓',
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
                Image.asset('icons/Group.png'),
                Text(
                  '$airHumidity%',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Image.asset('icons/050-barometer.png'),
                Text(
                  bars.toStringAsFixed(3),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Image.asset('icons/001-wind-1.png'),
                Text(
                  '$windSpeed km/h',
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
                Image.asset('icons/007-sunset.png'),
                Text(
                  sunrise,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Image.asset('icons/008-sunrise.png'),
                Text(
                  sunset,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ])),
          Expanded(
              flex: 1,
              child: Column(children: [
                Image.asset('icons/sand-clock.png'),
                Text(
                  dayTime,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                )
              ]))
        ],
      ),
      SizedBox(height: 20),
      Container(height: 100, child: HorizontalWeatherScroll(itemList))
    ];

    return Column(children: item);
  }
}
