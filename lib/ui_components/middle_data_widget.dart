import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';

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
      children: [
        Container(
          height: 150,
          width: 350,
          color: Colors.green,
        )
      ],
    );
  }
}
