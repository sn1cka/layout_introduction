import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData(Coord coord, List<Weather> weather, Main main, Wind wind, int dt, Sys sys, int timezone,
      int id, String name, int cod) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}

@freezed
abstract class Coord with _$Coord {
  const factory Coord(num lat, num lon) = _Coord;

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const factory Weather(String description) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}

@freezed
abstract class Main with _$Main {
  const factory Main(num temp, num temp_min, num temp_max, num pressure, num humidity) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const factory Wind(num speed) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
abstract class Sys with _$Sys {
  const factory Sys(String country, int sunrise, int sunset) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
