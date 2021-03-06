import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_data.dart';
import 'package:weather_app/ui_components/home_screen_top/location_info_widget.dart';
import 'package:weather_app/ui_components/home_screen_top/min_max_temp_text_widget.dart';
import 'package:weather_app/ui_components/home_screen_top/temp_text_widget.dart';
import 'package:weather_app/ui_components/home_screen_top/weather_description_widget.dart';

class TopDataWidget extends StatefulWidget {
  final WeatherData weatherData;

  const TopDataWidget({Key? key, required this.weatherData}) : super(key: key);

  @override
  _TopDataWidgetState createState() => _TopDataWidgetState();
}

class _TopDataWidgetState extends State<TopDataWidget> {
  var date;
  var time;

  @override
  void initState() {
    date = DateFormat('dd-MM').format(
        DateTime.fromMillisecondsSinceEpoch(
            widget.weatherData.dt!));
    time = DateFormat('hh:mm a').format(
        DateTime.fromMillisecondsSinceEpoch(
            widget.weatherData.dt!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            LocationInfoWidget(
              location: widget.weatherData.locationName,
              date: date,
              time: time,
            ),
            WeatherDescriptionWidget(weatherData: widget.weatherData),
            TempTextWidget(weatherData: widget.weatherData),
            MinMaxTempTextWidget(weatherData: widget.weatherData),
          ],
        )
      ],
    );
  }
}
