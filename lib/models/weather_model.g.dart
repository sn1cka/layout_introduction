// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherData _$_$_WeatherDataFromJson(Map<String, dynamic> json) {
  return _$_WeatherData(
    json['coord'] == null
        ? null
        : Coordinates.fromJson(json['coord'] as Map<String, dynamic>),
    (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>),
    json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    json['dt'] as int,
    json['sys'] == null
        ? null
        : Sys.fromJson(json['sys'] as Map<String, dynamic>),
    json['timezone'] as int,
    json['id'] as int,
    json['name'] as String,
    json['cod'] as int,
  );
}

Map<String, dynamic> _$_$_WeatherDataToJson(_$_WeatherData instance) =>
    <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind,
      'dt': instance.dt,
      'sys': instance.sys,
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_$_Coordinates _$_$_CoordinatesFromJson(Map<String, dynamic> json) {
  return _$_Coordinates(
    json['lat'] as num,
    json['lon'] as num,
  );
}

Map<String, dynamic> _$_$_CoordinatesToJson(_$_Coordinates instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

_$_Weather _$_$_WeatherFromJson(Map<String, dynamic> json) {
  return _$_Weather(
    json['description'] as String,
  );
}

Map<String, dynamic> _$_$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'description': instance.description,
    };

_$_Main _$_$_MainFromJson(Map<String, dynamic> json) {
  return _$_Main(
    json['temp'] as num,
    json['temp_min'] as num,
    json['temp_max'] as num,
    json['pressure'] as num,
    json['humidity'] as num,
  );
}

Map<String, dynamic> _$_$_MainToJson(_$_Main instance) => <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
    };

_$_Wind _$_$_WindFromJson(Map<String, dynamic> json) {
  return _$_Wind(
    json['speed'] as num,
  );
}

Map<String, dynamic> _$_$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
    };

_$_Sys _$_$_SysFromJson(Map<String, dynamic> json) {
  return _$_Sys(
    json['sunrise'] as int,
    json['sunset'] as int,
    json['country'] as String,
  );
}

Map<String, dynamic> _$_$_SysToJson(_$_Sys instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'country': instance.country,
    };
