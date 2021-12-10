import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';

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
        Container(
          height: 200,
          width: 350,
          color: Colors.yellow,
        )
      ],
    );
  }
}
