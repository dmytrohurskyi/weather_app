import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/ui_components/home_screen_middle/middle_data_widget.dart';
import 'package:weather_app/ui_components/home_screen_top/top_data_widget.dart';

import 'home_screen_bottom/bottom_data_widget.dart';

class MainColumnHomeWidget extends StatefulWidget {
  final WeatherData initWeatherData;

  const MainColumnHomeWidget({Key? key, required this.initWeatherData})
      : super(key: key);

  @override
  _MainColumnHomeWidgetState createState() => _MainColumnHomeWidgetState();
}

class _MainColumnHomeWidgetState extends State<MainColumnHomeWidget> {
  final _apiService = ApiService();
  WeatherData weatherData = WeatherData();

  @override
  void initState() {
    weatherData = widget.initWeatherData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 32),
          child: TopDataWidget(
            weatherData: weatherData,
          ),
        ),
        MiddleDataWidget(
          weatherData: weatherData,
        ),
        BottomDataWidget(
          weatherData: weatherData,
        ),
      ],
    );
  }
}
