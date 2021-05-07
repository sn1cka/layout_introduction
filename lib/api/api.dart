import 'package:dio/dio.dart';
import 'package:layout_introduction/models/weather_model.dart';
import 'package:retrofit/retrofit.dart';


part 'api.g.dart';

class Apis {
  static const String weather = '/weather';
}

@RestApi(baseUrl: 'https://community-open-weather-map.p.rapidapi.com')
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options =
        BaseOptions(receiveTimeout: 5000, connectTimeout: 5000, headers: {
      'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
      'x-rapidapi-key': '73e119a7demsh5d197fc3e6147b4p185c01jsne673573bf8ce'
    });

    return _ApiClient(dio);
  }

  @GET(Apis.weather)
  Future<WeatherData> getWeather(
      @Query('lat') num latitude, @Query('lon') num longitude,
      {@Query('lang') String lang = 'ru',
      @Query('units') String units = 'metric'});


}
