import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/services/location_service.dart';

class AppSplashScreen extends StatelessWidget {
  AppSplashScreen({Key? key}) : super(key: key);

  final _apiService = ApiService();
  final _locationService = LocationService();
  dynamic weatherData;

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      navigateAfterFuture: loadInitWeather(context),
      loadingText: const Text('Loading...'),
    );
  }

  Future<Object> loadInitWeather(BuildContext context) async {
    var location = await _locationService.getLocationName();

    _apiService
        .setOptions('https://community-open-weather-map.p.rapidapi.com/');

    Response response = await _apiService.fetchCurrentWeather(location);

    weatherData = WeatherData.fromJson(response.data);

    weatherData.locationName = location;

    return Navigator.pushNamed(context, '/home',
        arguments: {'initWeatherData': weatherData});
  }
}