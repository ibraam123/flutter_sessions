import 'package:dio/dio.dart';
import '../models/weather_model.dart';

class WeatherService {
  final Dio _dio = Dio();
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = '3677bed892474b30b7a122242220806';

  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      Response response = await _dio.get(
        '$baseUrl/forecast.json',
        queryParameters: {
          'key': apiKey,
          'q': cityName,
          'days': 7,
        },
      );

      WeatherModel weather = WeatherModel.fromJson(response.data);
      return weather;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ?? 
          'Oops, there was an error, try again later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops, there was an error, try again later');
    }
  }
}
