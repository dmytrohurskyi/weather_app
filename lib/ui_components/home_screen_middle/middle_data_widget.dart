import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui_components/home_screen_middle/forecast_round_button_widget.dart';

class MiddleDataWidget extends StatefulWidget {
  final WeatherData weatherData;

  const MiddleDataWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _MiddleDataWidgetState createState() => _MiddleDataWidgetState();
}

class _MiddleDataWidgetState extends State<MiddleDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ForecastRoundButtonWidget(),
      ],
    );
  }
}
