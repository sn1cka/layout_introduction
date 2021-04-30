import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:layout_introduction/api/api.dart';
import 'package:layout_introduction/models/detailed_weather_data_model.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({@required this.apiClient}) : super(WeatherEmpty());
  final ApiClient apiClient;

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    if (event is LoadWeatherEvent) {
      yield WeatherLoading();
      try {
        final DetailedWeatherDataModel weather =
            await apiClient.getWeather(event.lat, event.lot);
        print(weather.toJson());
        yield WeatherLoaded(weather: weather);
      } catch (error) {
        print(error);
        yield WeatherLoadingError();
      }
    }
  }
}
