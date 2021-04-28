/// coord : {"lon":10,"lat":10}
/// weather : [{"id":803,"main":"Clouds","description":"облачно с прояснениями","icon":"04d"}]
/// base : "stations"
/// main : {"temp":27.97,"feels_like":28.88,"temp_min":27.97,"temp_max":27.97,"pressure":1008,"humidity":55,"sea_level":1008,"grnd_level":951}
/// visibility : 10000
/// wind : {"speed":0.97,"deg":136,"gust":1.11}
/// clouds : {"all":60}
/// dt : 1619589551
/// sys : {"country":"NG","sunrise":1619586218,"sunset":1619631064}
/// timezone : 3600
/// id : 2347078
/// name : "Birim"
/// cod : 200

class DetailedWeatherDataModel {
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  num visibility;
  Wind wind;
  Clouds clouds;
  num dt;
  Sys sys;
  num timezone;
  num id;
  String name;
  num cod;

  DetailedWeatherDataModel({
      this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  DetailedWeatherDataModel.fromJson(dynamic json) {
    coord = json["coord"] != null ? Coord.fromJson(json["coord"]) : null;
    if (json["weather"] != null) {
      weather = [];
      json["weather"].forEach((v) {
        weather.add(Weather.fromJson(v));
      });
    }
    base = json["base"];
    main = json["main"] != null ? Main.fromJson(json["main"]) : null;
    visibility = json["visibility"];
    wind = json["wind"] != null ? Wind.fromJson(json["wind"]) : null;
    clouds = json["clouds"] != null ? Clouds.fromJson(json["clouds"]) : null;
    dt = json["dt"];
    sys = json["sys"] != null ? Sys.fromJson(json["sys"]) : null;
    timezone = json["timezone"];
    id = json["id"];
    name = json["name"];
    cod = json["cod"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (coord != null) {
      map["coord"] = coord.toJson();
    }
    if (weather != null) {
      map["weather"] = weather.map((v) => v.toJson()).toList();
    }
    map["base"] = base;
    if (main != null) {
      map["main"] = main.toJson();
    }
    map["visibility"] = visibility;
    if (wind != null) {
      map["wind"] = wind.toJson();
    }
    if (clouds != null) {
      map["clouds"] = clouds.toJson();
    }
    map["dt"] = dt;
    if (sys != null) {
      map["sys"] = sys.toJson();
    }
    map["timezone"] = timezone;
    map["id"] = id;
    map["name"] = name;
    map["cod"] = cod;
    return map;
  }

}

/// country : "NG"
/// sunrise : 1619586218
/// sunset : 1619631064

class Sys {
  String country;
  num sunrise;
  num sunset;

  Sys({
      this.country,
      this.sunrise,
      this.sunset});

  Sys.fromJson(dynamic json) {
    country = json["country"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["country"] = country;
    map["sunrise"] = sunrise;
    map["sunset"] = sunset;
    return map;
  }

}

/// all : 60

class Clouds {
  num all;

  Clouds({
      this.all});

  Clouds.fromJson(dynamic json) {
    all = json["all"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["all"] = all;
    return map;
  }

}

/// speed : 0.97
/// deg : 136
/// gust : 1.11

class Wind {
  num speed;
  num deg;
  num gust;

  Wind({
      this.speed,
      this.deg,
      this.gust});

  Wind.fromJson(dynamic json) {
    speed = json["speed"];
    deg = json["deg"];
    gust = json["gust"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["speed"] = speed;
    map["deg"] = deg;
    map["gust"] = gust;
    return map;
  }

}

/// temp : 27.97
/// feels_like : 28.88
/// temp_min : 27.97
/// temp_max : 27.97
/// pressure : 1008
/// humidity : 55
/// sea_level : 1008
/// grnd_level : 951

class Main {
  num temp;
  num feelsLike;
  num tempMin;
  num tempMax;
  num pressure;
  num humidity;
  num seaLevel;
  num grndLevel;

  Main({
      this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.seaLevel,
      this.grndLevel});

  Main.fromJson(dynamic json) {
    temp = json["temp"];
    feelsLike = json["feels_like"];
    tempMin = json["temp_min"];
    tempMax = json["temp_max"];
    pressure = json["pressure"];
    humidity = json["humidity"];
    seaLevel = json["sea_level"];
    grndLevel = json["grnd_level"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["temp"] = temp;
    map["feels_like"] = feelsLike;
    map["temp_min"] = tempMin;
    map["temp_max"] = tempMax;
    map["pressure"] = pressure;
    map["humidity"] = humidity;
    map["sea_level"] = seaLevel;
    map["grnd_level"] = grndLevel;
    return map;
  }

}

/// id : 803
/// main : "Clouds"
/// description : "облачно с прояснениями"
/// icon : "04d"

class Weather {
  num id;
  String main;
  String description;
  String icon;

  Weather({
      this.id,
      this.main,
      this.description,
      this.icon});

  Weather.fromJson(dynamic json) {
    id = json["id"];
    main = json["main"];
    description = json["description"];
    icon = json["icon"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["main"] = main;
    map["description"] = description;
    map["icon"] = icon;
    return map;
  }

}

/// lon : 10
/// lat : 10

class Coord {
  num lon;
  num lat;

  Coord({
      this.lon, 
      this.lat});

  Coord.fromJson(dynamic json) {
    lon = json["lon"];
    lat = json["lat"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lon"] = lon;
    map["lat"] = lat;
    return map;
  }

}