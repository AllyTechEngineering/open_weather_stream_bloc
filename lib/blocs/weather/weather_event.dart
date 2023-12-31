part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeatherEvent extends WeatherEvent {
  final String city;
  final double lat;
  final double lon;
  FetchWeatherEvent({required this.city, required this.lat, required this.lon});
}
