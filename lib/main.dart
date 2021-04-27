import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_introduction/weather_details_container.dart';

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
      ).copyWith(textTheme: GoogleFonts.barlowTextTheme()),
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
  final PageController controller = PageController(initialPage: 0);

  Future<Null> refreshWeather() async {
    refreshKey.currentState?.show(atTop: false);
    await Future.delayed(Duration(seconds: 2));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
            key: refreshKey,
            onRefresh: () => refreshWeather(),
            child:
                ListView(physics: AlwaysScrollableScrollPhysics(), children: [
              Stack(children: [
                Align(
                  child: Image(
                      image: AssetImage('images/background_day/graphic.png')),
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
                                      child: Text(DateTime.now().toString()))),
                              Expanded(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text('Test text')))
                            ],
                          ),
                          WeatherDetails()
                        ])))
              ])
            ])));
  }
}
