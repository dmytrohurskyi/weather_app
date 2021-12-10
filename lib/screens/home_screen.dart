import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui_components/home_body_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map;
    WeatherData initWeatherData;
    initWeatherData = arguments['initWeatherData'];
    return Scaffold(body: HomeBodyWidget(initWeatherData: initWeatherData,));
  }
}
