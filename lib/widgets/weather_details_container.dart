import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout_introduction/models/detailed_weather_data_model.dart';

import 'horizontal_weateher_details.dart';

class WeatherDetails extends StatefulWidget {
  WeatherDetails(this.data);

  final DetailedWeatherDataModel data;

  @override
  _WeatherDetailsState createState() => _WeatherDetailsState(data);
}

class _WeatherDetailsState extends State<WeatherDetails> {
  _WeatherDetailsState(this.data) {
    var main = data.main;
    var wind = data.wind;

    this.weatherState = data.weather.first.description;
    this._temp = main.temp.toInt();
    this._tempMax = main.tempMax;
    this._tempMin = main.tempMin;
    this._windSpeed = wind.speed;
    this._airHumidity = main.humidity;
    this._pressure = main.pressure;

    var time = DateTime.fromMillisecondsSinceEpoch(data.sys.sunset * 1000);
    this._sunset = '${time.hour}:${time.minute}';

    time = DateTime.fromMillisecondsSinceEpoch(data.sys.sunrise * 1000);
    this._sunrise = '${time.hour}:${time.minute}';

    time = DateTime.fromMillisecondsSinceEpoch((data.dt + data.timezone) * 1000)
        .toUtc();
    this._dayTime = '${time.hour}h ${time.minute}m ';
  }

  final DetailedWeatherDataModel data;

  String weatherState = '';
  num _temp = 27;
  num _tempMax = 22;
  num _tempMin = 23;
  num _airHumidity = 49;
  num _pressure = 1.007;
  num _windSpeed = 23;
  var _sunrise = '6:03';
  var _sunset = '7:05';
  var _dayTime = '13h 1m';

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

    return Column(children: [
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
                '$_temp°C',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, letterSpacing: 1),
              )),
          Expanded(
              flex: 1,
              child: Column(children: [
                Text(
                  '$_tempMax°C↑',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '$_tempMin°C↓',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                )
              ]))
        ],
      ),
      SizedBox(height: 40),
      Row(
        children: [
          _createItem('icons/027-humidity.png', 'Humidity', '$_airHumidity%'),
          _createItem('icons/050-barometer.png', 'Pressure',
              _pressure.toStringAsFixed(1)),
          _createItem('icons/001-wind-1.png', 'Wind', '$_windSpeed km/h'),
        ],
      ),
      SizedBox(height: 40),
      Row(children: [
        _createItem('icons/007-sunset.png', 'Sunrise', _sunrise),
        _createItem('icons/008-sunrise.png', 'Sunset', _sunset),
        _createItem('icons/sand-clock.png', 'DayTime', _dayTime)
      ]),
      SizedBox(height: 20),
      Container(height: 100, child: HorizontalWeatherScroll(itemList))
    ]);
  }

  Widget _createItem(String asset, String title, String value) {
    return Expanded(
        flex: 1,
        child: Column(children: [
          Image.asset(asset, height: 24),
          Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.grey, fontSize: 8, fontWeight: FontWeight.bold),
          )
        ]));
  }
}
