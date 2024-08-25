import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey = '9c6162a00ce14c1260bb3a41c8585b5b';

  Future<Map<String, dynamic>> fetchWeather(String cityName) async {
    final url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$cityName,IN&units=metric&appid=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  Future<Map<String, dynamic>> fetchForecast(String cityName) async {
    final url = Uri.parse('https://api.openweathermap.org/data/2.5/forecast?q=$cityName,IN&units=metric&appid=$apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather forecast');
    }
  }
}
