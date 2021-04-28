import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:layout_introduction/api.dart';
import 'package:layout_introduction/detailed_weather_data_model.dart';
import 'package:layout_introduction/weather_details_container.dart';
//todo rework whole class to code beatify
//todo add bloc and hive
//todo add location change
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
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var dateTimeNow =
      DateFormat('EEEE, dd MMMM yyyy | HH:mm').format(DateTime.now());
  var lat = 42.88208;
  var lon = 74.582;
  var currentLoc = '';
  LatLng position = LatLng(42.88208, 74.582);

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
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    heightFactor: 1.50,
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16))),
                          child: Row(
                            children: [
                              Expanded(
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        dateTimeNow,
                                        style: TextStyle(fontSize: 14),
                                      ))),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        topRight: Radius.circular(16))),
                                child: TextButton(
                                  child: Text(currentLoc,
                                      style: TextStyle(fontSize: 14)),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      //todo rework API key

                                        context: context,
                                        builder: (context) {
                                          return Expanded(
                                              child: GoogleMap(
                                            onMapCreated: _onMapCreated,
                                            initialCameraPosition:
                                                CameraPosition(
                                                    target: position, zoom: 11),
                                          ));
                                        },
                                        isScrollControlled: true);
                                  },
                                ),
                              ))
                            ],
                          )),
                      Container(
                          child: buildWeatherView(context),
                          color: Colors.white),
                    ]))
              ])
            ])));
  }

  FutureBuilder<DetailedWeatherDataModel> buildWeatherView(
      BuildContext context) {
    final dio = Dio(BaseOptions())
      ..interceptors
          .add(LogInterceptor(responseBody: true, responseHeader: true));
    final client = ApiClient(dio);
    return FutureBuilder<DetailedWeatherDataModel>(
      future: client.getWeather(lat, lon),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            !snapshot.hasError) {
          print(snapshot.error.toString() + '©');
          currentLoc = '${snapshot.data.sys.country}, ${snapshot.data.name}';

          return WeatherDetails(snapshot.data);
        } else {
          return Center(
              child: SizedBox(
            height: 370,
            child: Center(child: CircularProgressIndicator()),
          ));
        }
      },
    );
  }
}
