import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';
abstract class WeatherState extends Equatable {
  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final Weather weather;

  WeatherSuccess(this.weather);

  @override
  List<Object> get props => [weather];

 
}

class WeatherFailure extends WeatherState {}