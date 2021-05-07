import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherData with _$WeatherData {
  const factory WeatherData(Coordinates coord, List<Weather> weather, Main main, Wind wind, int dt, Sys sys,
      int timezone, int id, String name, int cod) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) => _$WeatherDataFromJson(json);
}

@freezed
abstract class Coordinates with _$Coordinates {
  const factory Coordinates(num lat, num lon) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const factory Weather(String description) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}

@freezed
abstract class Main with _$Main {
  const factory Main(num temp, @JsonKey(name: 'temp_min') num tempMin, @JsonKey(name: 'temp_max') num tempMax,
      num pressure, num humidity) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const factory Wind(num speed) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
abstract class Sys with _$Sys {
  const factory Sys(int sunrise, int sunset, [@Default(null) String country]) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
