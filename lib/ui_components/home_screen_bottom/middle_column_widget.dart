import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';

class MiddleColumnWidget extends StatefulWidget {
  final WeatherData weatherData;

  const MiddleColumnWidget({Key? key, required this.weatherData})
      : super(key: key);

  @override
  _MiddleColumnWidgetState createState() => _MiddleColumnWidgetState();
}

class _MiddleColumnWidgetState extends State<MiddleColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 115),
          child: Row(
            // Upper item(humidity)
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/icons/humidity.png',
                    width: 48,
                    color: Colors.white,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      'Humidity',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    '${widget.weatherData.main!.humidity ?? '00'}',
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
