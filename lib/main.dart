import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:layout_introduction/api/api.dart';
import 'package:layout_introduction/bloc/weather_bloc.dart';
import 'package:layout_introduction/widgets/gmap_widget.dart';
import 'package:layout_introduction/widgets/weather_details_container.dart';

//todo rework whole class to code beatify
//todo add GMap key
//todo change name in IOS
//todo Add freezed
//todo make to refresh starts and stops refreshIndicator

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('MyBox');
  Bloc.observer = SimpleBlocDelegate();
  final ApiClient repo = ApiClient(Dio());
  runApp(MyApp(repo: repo));
}

class MyApp extends StatefulWidget {
  MyApp({Key key, @required this.repo});

  final ApiClient repo;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

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
  var box = Hive.box('MyBox');
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  var currentDateTime = DateFormat('EEEE, dd MMMM yyyy | HH:mm').format(DateTime.now());
  var lat = 42.88208;
  var lon = 74.582;
  var currentLoc = 'KG, Бишкек';

  @override
  void initState() {
    lat ??= box.get('lat');
    lon ??= box.get('lon');
    currentLoc ??= box.get('location');
    super.initState();
  }

  void _saveCache() {
    box.put('lat', lat);
    box.put('lon', lon);
    box.put('location', currentLoc);
  }

  void _getWeather(context){
    BlocProvider.of<WeatherBloc>(context)
        .add(LoadWeatherEvent(lat, lon));
  }

  @override
  Widget build(BuildContext context) {
    var currentHour = DateTime.now().hour;

    return Scaffold(
        body: BlocProvider(
            create: (context) => WeatherBloc(apiClient: ApiClient(Dio())),
            child: BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
              Widget detailedWeather;
              if (state is WeatherEmpty) {
                _getWeather(context);
              }
              if (state is WeatherLoaded) {
                currentLoc = '${state.weather.sys.country}, ${state.weather.name}';
                detailedWeather = WeatherDetails(state.weather);
                this.lon = state.weather.coord.lon;
                this.lat = state.weather.coord.lat;
                _saveCache();
              } else
                detailedWeather = Center(child: CircularProgressIndicator());

              return RefreshIndicator(
                  key: refreshKey,
                  onRefresh: () async {
                    _getWeather(context);
                    refreshKey.currentState.show(atTop: false);
                  },
                  child: ListView(physics: AlwaysScrollableScrollPhysics(), children: [
                    Stack(children: [
                      Align(
                        child: Image(
                            fit: BoxFit.fitWidth,
                            image: (currentHour > 7 && currentHour < 19)
                                ? AssetImage('images/background_day/graphic.png')
                                : AssetImage('images/background_night/graphic.png')),
                        alignment: Alignment.topCenter,
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          heightFactor: 1.6,
                          child: Column(children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              currentDateTime,
                                              style: TextStyle(fontSize: 14),
                                            ))),
                                    Expanded(
                                        child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16), topRight: Radius.circular(16))),
                                      child: TextButton(
                                        child: Text(currentLoc, style: TextStyle(fontSize: 14)),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (mContext) {
                                                return MyGoogleMap(
                                                  lat,
                                                  lon,
                                                  onCoordsChanged: (lat, lon) async {
                                                    this.lat = lat;
                                                    this.lon = lon;
                                                    _getWeather(context);
                                                    await Future.delayed(Duration(milliseconds: 1000));
                                                    Navigator.pop(mContext);
                                                  },
                                                );
                                              },
                                              enableDrag: false,
                                              isScrollControlled: true);
                                        },
                                      ),
                                    ))
                                  ],
                                )),
                            Container(color: Colors.white, child: detailedWeather)
                          ]))
                    ])
                  ]));
            })));
  }
}
