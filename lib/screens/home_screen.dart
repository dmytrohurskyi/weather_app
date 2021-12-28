import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/services/location_service.dart';
import 'package:weather_app/ui_components/home_body_widget.dart';
import 'package:weather_app/ui_components/loading_data_indicator_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _apiService.fetchCurrentWeather(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                body: HomeBodyWidget(
                    initWeatherData: snapshot.data as WeatherData));
          } else if (snapshot.hasError) {
            return Text('ERROR: ${snapshot.error}');
          }
          return const LoadingDataIndicatorWidget();
        });
  }
}
