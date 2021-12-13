import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_data.dart';

import 'location_service.dart';

class ApiService {
  ApiService();

  final _locationService = LocationService();

  final dio = Dio(BaseOptions(
      baseUrl: 'https://community-open-weather-map.p.rapidapi.com/'));

  Future<Object> fetchCurrentWeather() async {
    var location = await _locationService.getLocationName();

    var headers = {
      'x-rapidapi-host': 'community-open-weather-map.p.rapidapi.com',
      'x-rapidapi-key': '4ce8c5e763msh49e1bf31ddd08efp1fd1afjsn4fffac5450a3'
    };
    var response = await dio.get('/weather',
        queryParameters: {'q': location, 'units': 'metric'},
        options: Options(headers: headers));

    var weatherData = WeatherData.fromJson(response.data);
    weatherData.locationName = location;

    return weatherData;
  }
}
