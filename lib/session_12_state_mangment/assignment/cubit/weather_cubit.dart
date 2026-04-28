import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/weather_service.dart';
import '../models/weather_model.dart';
import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherService weatherService;
  WeatherCubit(this.weatherService) : super(WeatherInitial());

  Future<void> getWeather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      WeatherModel weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel, cityName: cityName));
    } catch (e) {
      emit(WeatherFailure(errorMessage: e.toString()));
    }
  }
}
