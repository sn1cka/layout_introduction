part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  const WeatherEvent();
}

class LoadWeatherEvent extends WeatherEvent {
  final num lat;
  final num lot;
  const LoadWeatherEvent(this.lat, this.lot);

  @override
  List<Object> get props => [];
}
