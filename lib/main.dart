import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_introduction/api.dart';
import 'package:layout_introduction/api_utils/response_data.dart';
import 'package:layout_introduction/detailed_weather_data_model.dart';
import 'package:layout_introduction/weather_details_container.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.barlowTextTheme(),
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
  DetailedWeatherDataModel data;


  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var random = Random();
  var color = Colors.accents.first;

  FutureBuilder<ResponseData> buildWeatherView(BuildContext context) {
    final dio = Dio(BaseOptions())..interceptors.add(LogInterceptor(responseBody: true, responseHeader: true));
    final client = ApiClient(dio);
    return FutureBuilder<ResponseData>(
      future: client.getWeather(10, 10),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            !snapshot.hasError) {
          print('${snapshot.data.toJson()} ©');
          return WeatherDetails(snapshot.data.data.first);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<Null> refreshWeather() async {
    refreshKey.currentState?.show(atTop: false);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var currentHour = DateTime.now().hour;
    return Scaffold(
        body: RefreshIndicator(
            key: refreshKey,
            onRefresh: refreshWeather,
            child:
                ListView(physics: AlwaysScrollableScrollPhysics(), children: [
              Stack(children: [
                Align(
                  child: Image(
                      image: (currentHour > 7 && currentHour < 19)
                          ? AssetImage('images/background_day/graphic.png')
                          : AssetImage('images/background_night/graphic.png')),
                  alignment: Alignment.topCenter,
                  heightFactor: 1,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 1.62,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        child: Column(children: [
                          Row(
                            children: [
                              Expanded(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        DateTime.now().toString(),
                                        style: TextStyle(fontSize: 17),
                                      ))),
                              Expanded(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text('Test text',
                                          style: TextStyle(fontSize: 17))))
                            ],
                          ),
                          buildWeatherView(context)
                        ])))
              ])
            ])));
  }
}
