import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_data.dart';

class StartColumnWidget extends StatefulWidget {
  final WeatherData weatherData;

  const StartColumnWidget({Key? key, required this.weatherData}) : super(key: key);

  @override
  _StartColumnWidgetState createState() => _StartColumnWidgetState();
}

class _StartColumnWidgetState extends State<StartColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // Upper item(pressure)
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icons/pressure.png',
                  width: 48,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    'Pressure',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  '${widget.weatherData.mainInformation!.pressure ?? '0000'}',
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          // Bottom item(sunrise)
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icons/sunrise.png',
                  width: 48,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'Sunrise',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  DateFormat('kk:mm a').format(
                      DateTime.fromMillisecondsSinceEpoch(
                          widget.weatherData.timeStamps!.sunrise!)),
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
