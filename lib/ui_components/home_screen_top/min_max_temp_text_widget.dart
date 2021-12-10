import 'package:flutter/material.dart';

class MinMaxTempTextWidget extends StatefulWidget {
  final weatherData;
  const MinMaxTempTextWidget({Key? key, required this.weatherData}) : super(key: key);

  @override
  _MinMaxTempTextWidgetState createState() => _MinMaxTempTextWidgetState();
}

class _MinMaxTempTextWidgetState extends State<MinMaxTempTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            'Min: ${widget.weatherData.main!.tempMin!.ceil()??'undefined'}°C',
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
          ),
          Text(
            'Max: ${widget.weatherData.main!.tempMax!.ceil()??'undefined'}°C',
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
