import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';

class WeatherDescriptionWidget extends StatefulWidget {
  final WeatherData weatherData;

  const WeatherDescriptionWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _WeatherDescriptionWidgetState createState() =>
      _WeatherDescriptionWidgetState();
}

class _WeatherDescriptionWidgetState extends State<WeatherDescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        widget.weatherData.weather!.first.description!.replaceFirst(
            RegExp(r'[a-z]'),
            widget.weatherData.weather!.first.description![0].toUpperCase()),
        style: const TextStyle(fontSize: 22, color: Colors.white),
      ),
    );
  }
}
