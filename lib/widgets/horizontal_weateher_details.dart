import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalWeatherScroll extends StatelessWidget {
  final List<WeatherDetailModel> list;

  HorizontalWeatherScroll(this.list);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 20),
      shrinkWrap: true,
      primary: true,
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var item = list[index];
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
                elevation: 10,
                borderOnForeground: false,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                      item.icon,
                      Text("${item.dayOfWeek},${item.temp}°C "),
                      Text('${item.tempMax}°C,${item.tempMin}°C')
                    ]))));
      },
    );
  }
}

class WeatherDetailModel {
  WeatherDetailModel(
      {@required this.dayOfWeek,
      @required this.temp,
      @required this.icon,
      @required this.tempMax,
      @required this.tempMin});

  String dayOfWeek;
  int tempMax;
  int tempMin;
  int temp;
  Icon icon;
}
