import '../models/weather_model.dart';

abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  final WeatherModel weatherModel;
  final String cityName;
  WeatherSuccess({required this.weatherModel, required this.cityName});
}

class WeatherFailure extends WeatherState {
  final String errorMessage;
  WeatherFailure({required this.errorMessage});
}
