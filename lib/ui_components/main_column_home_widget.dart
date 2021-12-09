import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/services/api_service.dart';
import 'package:weather_app/ui_components/middle_data_widget.dart';
import 'package:weather_app/ui_components/top_data_widget.dart';

import 'bottom_data_widget.dart';

class MainColumnHomeWidget extends StatefulWidget {
  const MainColumnHomeWidget({Key? key}) : super(key: key);

  @override
  _MainColumnHomeWidgetState createState() => _MainColumnHomeWidgetState();
}

class _MainColumnHomeWidgetState extends State<MainColumnHomeWidget> {
  final _apiService = ApiService();
  var weatherData;

  @override
  void initState() {
    _apiService
        .setOptions('https://community-open-weather-map.p.rapidapi.com/');
    Future.delayed(Duration.zero, () async {
      Response response =
          await _apiService.fetchCurrentWeather('Kyiv') as Response;
      weatherData = WeatherData.fromJson(response.data);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TopDataWidget(
          weatherData: weatherData,
        ),
        MiddleDataWidget(
          weatherData: weatherData,
        ),
        BottomDataWidget(
          weatherData: weatherData,
        ),
        TextButton(
          onPressed: () {
            print(weatherData.main!.temp);
          },
          child: Text('Press'),
        ),
      ],
    );
  }
}
