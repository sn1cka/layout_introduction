import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:layout_introduction/api/api.dart';
import 'package:layout_introduction/models/weather_model.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';
part 'weather_state.dart';


class SimpleBlocDelegate extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('bloc transition');
  }
}

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
        final WeatherData weather =
            await apiClient.getWeather(event.lat, event.lot);
        print(weather.toJson());
        yield WeatherLoaded(weather: weather);
      } catch (error) {
        print(error);
        yield WeatherLoadingError();
      }
    }
  }
  @override
  void onTransition(Transition<WeatherEvent, WeatherState> transition) {
    print(transition);
    super.onTransition(transition);
  }
}
