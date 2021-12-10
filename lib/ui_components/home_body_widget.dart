import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui_components/main_column_home_widget.dart';

class HomeBodyWidget extends StatefulWidget {
  final WeatherData initWeatherData;

  const HomeBodyWidget({Key? key, required this.initWeatherData})
      : super(key: key);

  @override
  _HomeBodyWidgetState createState() => _HomeBodyWidgetState();
}

class _HomeBodyWidgetState extends State<HomeBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.deepPurple,
          ],
        ),
      ),
      child: SafeArea(
        child: MainColumnHomeWidget(
          initWeatherData: widget.initWeatherData,
        ),
      ),
    );
  }
}
