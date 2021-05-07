// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
class _$WeatherDataTearOff {
  const _$WeatherDataTearOff();

// ignore: unused_element
  _WeatherData call(Coordinates coord, List<Weather> weather, Main main,
      Wind wind, int dt, Sys sys, int timezone, int id, String name, int cod) {
    return _WeatherData(
      coord,
      weather,
      main,
      wind,
      dt,
      sys,
      timezone,
      id,
      name,
      cod,
    );
  }

// ignore: unused_element
  WeatherData fromJson(Map<String, Object> json) {
    return WeatherData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherData = _$WeatherDataTearOff();

/// @nodoc
mixin _$WeatherData {
  Coordinates get coord;
  List<Weather> get weather;
  Main get main;
  Wind get wind;
  int get dt;
  Sys get sys;
  int get timezone;
  int get id;
  String get name;
  int get cod;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call(
      {Coordinates coord,
      List<Weather> weather,
      Main main,
      Wind wind,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name,
      int cod});

  $CoordinatesCopyWith<$Res> get coord;
  $MainCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object coord = freezed,
    Object weather = freezed,
    Object main = freezed,
    Object wind = freezed,
    Object dt = freezed,
    Object sys = freezed,
    Object timezone = freezed,
    Object id = freezed,
    Object name = freezed,
    Object cod = freezed,
  }) {
    return _then(_value.copyWith(
      coord: coord == freezed ? _value.coord : coord as Coordinates,
      weather: weather == freezed ? _value.weather : weather as List<Weather>,
      main: main == freezed ? _value.main : main as Main,
      wind: wind == freezed ? _value.wind : wind as Wind,
      dt: dt == freezed ? _value.dt : dt as int,
      sys: sys == freezed ? _value.sys : sys as Sys,
      timezone: timezone == freezed ? _value.timezone : timezone as int,
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      cod: cod == freezed ? _value.cod : cod as int,
    ));
  }

  @override
  $CoordinatesCopyWith<$Res> get coord {
    if (_value.coord == null) {
      return null;
    }
    return $CoordinatesCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }

  @override
  $MainCopyWith<$Res> get main {
    if (_value.main == null) {
      return null;
    }
    return $MainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value));
    });
  }

  @override
  $WindCopyWith<$Res> get wind {
    if (_value.wind == null) {
      return null;
    }
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $SysCopyWith<$Res> get sys {
    if (_value.sys == null) {
      return null;
    }
    return $SysCopyWith<$Res>(_value.sys, (value) {
      return _then(_value.copyWith(sys: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherDataCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(
          _WeatherData value, $Res Function(_WeatherData) then) =
      __$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Coordinates coord,
      List<Weather> weather,
      Main main,
      Wind wind,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name,
      int cod});

  @override
  $CoordinatesCopyWith<$Res> get coord;
  @override
  $MainCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class __$WeatherDataCopyWithImpl<$Res> extends _$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(
      _WeatherData _value, $Res Function(_WeatherData) _then)
      : super(_value, (v) => _then(v as _WeatherData));

  @override
  _WeatherData get _value => super._value as _WeatherData;

  @override
  $Res call({
    Object coord = freezed,
    Object weather = freezed,
    Object main = freezed,
    Object wind = freezed,
    Object dt = freezed,
    Object sys = freezed,
    Object timezone = freezed,
    Object id = freezed,
    Object name = freezed,
    Object cod = freezed,
  }) {
    return _then(_WeatherData(
      coord == freezed ? _value.coord : coord as Coordinates,
      weather == freezed ? _value.weather : weather as List<Weather>,
      main == freezed ? _value.main : main as Main,
      wind == freezed ? _value.wind : wind as Wind,
      dt == freezed ? _value.dt : dt as int,
      sys == freezed ? _value.sys : sys as Sys,
      timezone == freezed ? _value.timezone : timezone as int,
      id == freezed ? _value.id : id as int,
      name == freezed ? _value.name : name as String,
      cod == freezed ? _value.cod : cod as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WeatherData implements _WeatherData {
  const _$_WeatherData(this.coord, this.weather, this.main, this.wind, this.dt,
      this.sys, this.timezone, this.id, this.name, this.cod)
      : assert(coord != null),
        assert(weather != null),
        assert(main != null),
        assert(wind != null),
        assert(dt != null),
        assert(sys != null),
        assert(timezone != null),
        assert(id != null),
        assert(name != null),
        assert(cod != null);

  factory _$_WeatherData.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherDataFromJson(json);

  @override
  final Coordinates coord;
  @override
  final List<Weather> weather;
  @override
  final Main main;
  @override
  final Wind wind;
  @override
  final int dt;
  @override
  final Sys sys;
  @override
  final int timezone;
  @override
  final int id;
  @override
  final String name;
  @override
  final int cod;

  @override
  String toString() {
    return 'WeatherData(coord: $coord, weather: $weather, main: $main, wind: $wind, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherData &&
            (identical(other.coord, coord) ||
                const DeepCollectionEquality().equals(other.coord, coord)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.wind, wind) ||
                const DeepCollectionEquality().equals(other.wind, wind)) &&
            (identical(other.dt, dt) ||
                const DeepCollectionEquality().equals(other.dt, dt)) &&
            (identical(other.sys, sys) ||
                const DeepCollectionEquality().equals(other.sys, sys)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality()
                    .equals(other.timezone, timezone)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.cod, cod) ||
                const DeepCollectionEquality().equals(other.cod, cod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coord) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(wind) ^
      const DeepCollectionEquality().hash(dt) ^
      const DeepCollectionEquality().hash(sys) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(cod);

  @JsonKey(ignore: true)
  @override
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherDataToJson(this);
  }
}

abstract class _WeatherData implements WeatherData {
  const factory _WeatherData(
      Coordinates coord,
      List<Weather> weather,
      Main main,
      Wind wind,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name,
      int cod) = _$_WeatherData;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$_WeatherData.fromJson;

  @override
  Coordinates get coord;
  @override
  List<Weather> get weather;
  @override
  Main get main;
  @override
  Wind get wind;
  @override
  int get dt;
  @override
  Sys get sys;
  @override
  int get timezone;
  @override
  int get id;
  @override
  String get name;
  @override
  int get cod;
  @override
  @JsonKey(ignore: true)
  _$WeatherDataCopyWith<_WeatherData> get copyWith;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
class _$CoordinatesTearOff {
  const _$CoordinatesTearOff();

// ignore: unused_element
  _Coordinates call(num lat, num lon) {
    return _Coordinates(
      lat,
      lon,
    );
  }

// ignore: unused_element
  Coordinates fromJson(Map<String, Object> json) {
    return Coordinates.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Coordinates = _$CoordinatesTearOff();

/// @nodoc
mixin _$Coordinates {
  num get lat;
  num get lon;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res>;
  $Res call({num lat, num lon});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res> implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  final Coordinates _value;
  // ignore: unused_field
  final $Res Function(Coordinates) _then;

  @override
  $Res call({
    Object lat = freezed,
    Object lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed ? _value.lat : lat as num,
      lon: lon == freezed ? _value.lon : lon as num,
    ));
  }
}

/// @nodoc
abstract class _$CoordinatesCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$CoordinatesCopyWith(
          _Coordinates value, $Res Function(_Coordinates) then) =
      __$CoordinatesCopyWithImpl<$Res>;
  @override
  $Res call({num lat, num lon});
}

/// @nodoc
class __$CoordinatesCopyWithImpl<$Res> extends _$CoordinatesCopyWithImpl<$Res>
    implements _$CoordinatesCopyWith<$Res> {
  __$CoordinatesCopyWithImpl(
      _Coordinates _value, $Res Function(_Coordinates) _then)
      : super(_value, (v) => _then(v as _Coordinates));

  @override
  _Coordinates get _value => super._value as _Coordinates;

  @override
  $Res call({
    Object lat = freezed,
    Object lon = freezed,
  }) {
    return _then(_Coordinates(
      lat == freezed ? _value.lat : lat as num,
      lon == freezed ? _value.lon : lon as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Coordinates implements _Coordinates {
  const _$_Coordinates(this.lat, this.lon)
      : assert(lat != null),
        assert(lon != null);

  factory _$_Coordinates.fromJson(Map<String, dynamic> json) =>
      _$_$_CoordinatesFromJson(json);

  @override
  final num lat;
  @override
  final num lon;

  @override
  String toString() {
    return 'Coordinates(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coordinates &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon);

  @JsonKey(ignore: true)
  @override
  _$CoordinatesCopyWith<_Coordinates> get copyWith =>
      __$CoordinatesCopyWithImpl<_Coordinates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoordinatesToJson(this);
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(num lat, num lon) = _$_Coordinates;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$_Coordinates.fromJson;

  @override
  num get lat;
  @override
  num get lon;
  @override
  @JsonKey(ignore: true)
  _$CoordinatesCopyWith<_Coordinates> get copyWith;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

// ignore: unused_element
  _Weather call(String description) {
    return _Weather(
      description,
    );
  }

// ignore: unused_element
  Weather fromJson(Map<String, Object> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  String get description;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_Weather(
      description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Weather implements _Weather {
  const _$_Weather(this.description) : assert(description != null);

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'Weather(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherToJson(this);
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(String description) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith;
}

Main _$MainFromJson(Map<String, dynamic> json) {
  return _Main.fromJson(json);
}

/// @nodoc
class _$MainTearOff {
  const _$MainTearOff();

// ignore: unused_element
  _Main call(num temp, @JsonKey(name: 'temp_min') num tempMin,
      @JsonKey(name: 'temp_max') num tempMax, num pressure, num humidity) {
    return _Main(
      temp,
      tempMin,
      tempMax,
      pressure,
      humidity,
    );
  }

// ignore: unused_element
  Main fromJson(Map<String, Object> json) {
    return Main.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Main = _$MainTearOff();

/// @nodoc
mixin _$Main {
  num get temp;
  @JsonKey(name: 'temp_min')
  num get tempMin;
  @JsonKey(name: 'temp_max')
  num get tempMax;
  num get pressure;
  num get humidity;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $MainCopyWith<Main> get copyWith;
}

/// @nodoc
abstract class $MainCopyWith<$Res> {
  factory $MainCopyWith(Main value, $Res Function(Main) then) =
      _$MainCopyWithImpl<$Res>;
  $Res call(
      {num temp,
      @JsonKey(name: 'temp_min') num tempMin,
      @JsonKey(name: 'temp_max') num tempMax,
      num pressure,
      num humidity});
}

/// @nodoc
class _$MainCopyWithImpl<$Res> implements $MainCopyWith<$Res> {
  _$MainCopyWithImpl(this._value, this._then);

  final Main _value;
  // ignore: unused_field
  final $Res Function(Main) _then;

  @override
  $Res call({
    Object temp = freezed,
    Object tempMin = freezed,
    Object tempMax = freezed,
    Object pressure = freezed,
    Object humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed ? _value.temp : temp as num,
      tempMin: tempMin == freezed ? _value.tempMin : tempMin as num,
      tempMax: tempMax == freezed ? _value.tempMax : tempMax as num,
      pressure: pressure == freezed ? _value.pressure : pressure as num,
      humidity: humidity == freezed ? _value.humidity : humidity as num,
    ));
  }
}

/// @nodoc
abstract class _$MainCopyWith<$Res> implements $MainCopyWith<$Res> {
  factory _$MainCopyWith(_Main value, $Res Function(_Main) then) =
      __$MainCopyWithImpl<$Res>;
  @override
  $Res call(
      {num temp,
      @JsonKey(name: 'temp_min') num tempMin,
      @JsonKey(name: 'temp_max') num tempMax,
      num pressure,
      num humidity});
}

/// @nodoc
class __$MainCopyWithImpl<$Res> extends _$MainCopyWithImpl<$Res>
    implements _$MainCopyWith<$Res> {
  __$MainCopyWithImpl(_Main _value, $Res Function(_Main) _then)
      : super(_value, (v) => _then(v as _Main));

  @override
  _Main get _value => super._value as _Main;

  @override
  $Res call({
    Object temp = freezed,
    Object tempMin = freezed,
    Object tempMax = freezed,
    Object pressure = freezed,
    Object humidity = freezed,
  }) {
    return _then(_Main(
      temp == freezed ? _value.temp : temp as num,
      tempMin == freezed ? _value.tempMin : tempMin as num,
      tempMax == freezed ? _value.tempMax : tempMax as num,
      pressure == freezed ? _value.pressure : pressure as num,
      humidity == freezed ? _value.humidity : humidity as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Main implements _Main {
  const _$_Main(this.temp, @JsonKey(name: 'temp_min') this.tempMin,
      @JsonKey(name: 'temp_max') this.tempMax, this.pressure, this.humidity)
      : assert(temp != null),
        assert(tempMin != null),
        assert(tempMax != null),
        assert(pressure != null),
        assert(humidity != null);

  factory _$_Main.fromJson(Map<String, dynamic> json) =>
      _$_$_MainFromJson(json);

  @override
  final num temp;
  @override
  @JsonKey(name: 'temp_min')
  final num tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final num tempMax;
  @override
  final num pressure;
  @override
  final num humidity;

  @override
  String toString() {
    return 'Main(temp: $temp, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Main &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.tempMin, tempMin) ||
                const DeepCollectionEquality()
                    .equals(other.tempMin, tempMin)) &&
            (identical(other.tempMax, tempMax) ||
                const DeepCollectionEquality()
                    .equals(other.tempMax, tempMax)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(tempMin) ^
      const DeepCollectionEquality().hash(tempMax) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(humidity);

  @JsonKey(ignore: true)
  @override
  _$MainCopyWith<_Main> get copyWith =>
      __$MainCopyWithImpl<_Main>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MainToJson(this);
  }
}

abstract class _Main implements Main {
  const factory _Main(
      num temp,
      @JsonKey(name: 'temp_min') num tempMin,
      @JsonKey(name: 'temp_max') num tempMax,
      num pressure,
      num humidity) = _$_Main;

  factory _Main.fromJson(Map<String, dynamic> json) = _$_Main.fromJson;

  @override
  num get temp;
  @override
  @JsonKey(name: 'temp_min')
  num get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  num get tempMax;
  @override
  num get pressure;
  @override
  num get humidity;
  @override
  @JsonKey(ignore: true)
  _$MainCopyWith<_Main> get copyWith;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
class _$WindTearOff {
  const _$WindTearOff();

// ignore: unused_element
  _Wind call(num speed) {
    return _Wind(
      speed,
    );
  }

// ignore: unused_element
  Wind fromJson(Map<String, Object> json) {
    return Wind.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Wind = _$WindTearOff();

/// @nodoc
mixin _$Wind {
  num get speed;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WindCopyWith<Wind> get copyWith;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res>;
  $Res call({num speed});
}

/// @nodoc
class _$WindCopyWithImpl<$Res> implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  final Wind _value;
  // ignore: unused_field
  final $Res Function(Wind) _then;

  @override
  $Res call({
    Object speed = freezed,
  }) {
    return _then(_value.copyWith(
      speed: speed == freezed ? _value.speed : speed as num,
    ));
  }
}

/// @nodoc
abstract class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) then) =
      __$WindCopyWithImpl<$Res>;
  @override
  $Res call({num speed});
}

/// @nodoc
class __$WindCopyWithImpl<$Res> extends _$WindCopyWithImpl<$Res>
    implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(_Wind _value, $Res Function(_Wind) _then)
      : super(_value, (v) => _then(v as _Wind));

  @override
  _Wind get _value => super._value as _Wind;

  @override
  $Res call({
    Object speed = freezed,
  }) {
    return _then(_Wind(
      speed == freezed ? _value.speed : speed as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Wind implements _Wind {
  const _$_Wind(this.speed) : assert(speed != null);

  factory _$_Wind.fromJson(Map<String, dynamic> json) =>
      _$_$_WindFromJson(json);

  @override
  final num speed;

  @override
  String toString() {
    return 'Wind(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wind &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(speed);

  @JsonKey(ignore: true)
  @override
  _$WindCopyWith<_Wind> get copyWith =>
      __$WindCopyWithImpl<_Wind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WindToJson(this);
  }
}

abstract class _Wind implements Wind {
  const factory _Wind(num speed) = _$_Wind;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$_Wind.fromJson;

  @override
  num get speed;
  @override
  @JsonKey(ignore: true)
  _$WindCopyWith<_Wind> get copyWith;
}

Sys _$SysFromJson(Map<String, dynamic> json) {
  return _Sys.fromJson(json);
}

/// @nodoc
class _$SysTearOff {
  const _$SysTearOff();

// ignore: unused_element
  _Sys call(int sunrise, int sunset, [String country = null]) {
    return _Sys(
      sunrise,
      sunset,
      country,
    );
  }

// ignore: unused_element
  Sys fromJson(Map<String, Object> json) {
    return Sys.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Sys = _$SysTearOff();

/// @nodoc
mixin _$Sys {
  int get sunrise;
  int get sunset;
  String get country;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SysCopyWith<Sys> get copyWith;
}

/// @nodoc
abstract class $SysCopyWith<$Res> {
  factory $SysCopyWith(Sys value, $Res Function(Sys) then) =
      _$SysCopyWithImpl<$Res>;
  $Res call({int sunrise, int sunset, String country});
}

/// @nodoc
class _$SysCopyWithImpl<$Res> implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._value, this._then);

  final Sys _value;
  // ignore: unused_field
  final $Res Function(Sys) _then;

  @override
  $Res call({
    Object sunrise = freezed,
    Object sunset = freezed,
    Object country = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: sunrise == freezed ? _value.sunrise : sunrise as int,
      sunset: sunset == freezed ? _value.sunset : sunset as int,
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

/// @nodoc
abstract class _$SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$SysCopyWith(_Sys value, $Res Function(_Sys) then) =
      __$SysCopyWithImpl<$Res>;
  @override
  $Res call({int sunrise, int sunset, String country});
}

/// @nodoc
class __$SysCopyWithImpl<$Res> extends _$SysCopyWithImpl<$Res>
    implements _$SysCopyWith<$Res> {
  __$SysCopyWithImpl(_Sys _value, $Res Function(_Sys) _then)
      : super(_value, (v) => _then(v as _Sys));

  @override
  _Sys get _value => super._value as _Sys;

  @override
  $Res call({
    Object sunrise = freezed,
    Object sunset = freezed,
    Object country = freezed,
  }) {
    return _then(_Sys(
      sunrise == freezed ? _value.sunrise : sunrise as int,
      sunset == freezed ? _value.sunset : sunset as int,
      country == freezed ? _value.country : country as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Sys implements _Sys {
  const _$_Sys(this.sunrise, this.sunset, [this.country = null])
      : assert(sunrise != null),
        assert(sunset != null),
        assert(country != null);

  factory _$_Sys.fromJson(Map<String, dynamic> json) => _$_$_SysFromJson(json);

  @override
  final int sunrise;
  @override
  final int sunset;
  @JsonKey(defaultValue: null)
  @override
  final String country;

  @override
  String toString() {
    return 'Sys(sunrise: $sunrise, sunset: $sunset, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sys &&
            (identical(other.sunrise, sunrise) ||
                const DeepCollectionEquality()
                    .equals(other.sunrise, sunrise)) &&
            (identical(other.sunset, sunset) ||
                const DeepCollectionEquality().equals(other.sunset, sunset)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sunrise) ^
      const DeepCollectionEquality().hash(sunset) ^
      const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$SysCopyWith<_Sys> get copyWith =>
      __$SysCopyWithImpl<_Sys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SysToJson(this);
  }
}

abstract class _Sys implements Sys {
  const factory _Sys(int sunrise, int sunset, [String country]) = _$_Sys;

  factory _Sys.fromJson(Map<String, dynamic> json) = _$_Sys.fromJson;

  @override
  int get sunrise;
  @override
  int get sunset;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$SysCopyWith<_Sys> get copyWith;
}
