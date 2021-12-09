import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';

class TopDataWidget extends StatefulWidget {
  final WeatherData weatherData;

  const TopDataWidget({Key? key, required this.weatherData}) : super(key: key);

  @override
  _TopDataWidgetState createState() => _TopDataWidgetState();
}

class _TopDataWidgetState extends State<TopDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              '${widget.weatherData.main!.temp!.ceil()}°C',
              style: const TextStyle(fontSize: 68, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Min: ${widget.weatherData.main!.tempMin!.ceil()}°C',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                  ),
                  Text(
                    'Max: ${widget.weatherData.main!.tempMax!.ceil()}°C',
                    style: const TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
