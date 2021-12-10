import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui_components/home_screen_bottom/end_column_widget.dart';
import 'package:weather_app/ui_components/home_screen_bottom/middle_column_widget.dart';
import 'package:weather_app/ui_components/home_screen_bottom/start_column_widget.dart';

class BottomDataWidget extends StatefulWidget {
  final WeatherData weatherData;

  const BottomDataWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _BottomDataWidgetState createState() => _BottomDataWidgetState();
}

class _BottomDataWidgetState extends State<BottomDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StartColumnWidget(weatherData: widget.weatherData),
        const SizedBox(
          width: 48,
        ),
        MiddleColumnWidget(weatherData: widget.weatherData),
        const SizedBox(
          width: 48,
        ),
        EndColumnWidget(weatherData: widget.weatherData),
      ],
    );
  }
}
