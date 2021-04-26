import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:layout_introduction/weather_details_container.dart';

import 'horizontal_weateher_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var random = Random();
  var color = Colors.accents.first;

  Future<Null> refreshWeather() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    List<WeatherDetailModel> itemList = [];
    var item = WeatherDetailModel(
        dayOfWeek: 'Monday',
        temp: 21,
        icon: Icon(Icons.wb_cloudy),
        tempMax: 25,
        tempMin: 13);

    for (int i = 0; i < 100; i++) {
      itemList.add(item);
    }
    return Scaffold(
        body: RefreshIndicator(
            key: refreshKey,
            onRefresh: () => refreshWeather(),
            child:
            ListView(physics: AlwaysScrollableScrollPhysics(), children: [
              Image(image: AssetImage('images/background_day/graphic.png')),
              WeatherDetails(),
              Container(height: 100, child: HorizontalWeatherScroll(itemList)),
            ])));
  }
}
