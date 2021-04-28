import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

import 'detailed_weather_data_model.dart';


part 'api.g.dart';

class Apis {
  static const String weather = '/weather';
}

@RestApi(baseUrl: "https://community-open-weather-map.p.rapidapi.com")
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options =
        BaseOptions(receiveTimeout: 5000, connectTimeout: 5000, headers: {
      "x-rapidapi-key": "d85395f85bmsh073dc91425510c0p1295c8jsnf9d220ea298b",
      "x-rapidapi-host": "community-open-weather-map.p.rapidapi.com"
    });

    return _ApiClient(dio);
  }

  @GET(Apis.weather)
  Future<DetailedWeatherDataModel> getWeather(
      @Query("lat") num latitude, @Query("lon") num longitude,
      {@Query("lang") String lang = "ru",
      @Query("units") String units = "metric"});
}
