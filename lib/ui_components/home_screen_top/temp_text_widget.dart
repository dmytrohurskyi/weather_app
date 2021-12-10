import 'package:flutter/material.dart';

class TempTextWidget extends StatefulWidget {
  final weatherData;
  const TempTextWidget({Key? key, required this.weatherData}) : super(key: key);

  @override
  _TempTextWidgetState createState() => _TempTextWidgetState();
}

class _TempTextWidgetState extends State<TempTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.weatherData.main!.temp!.ceil()??'undefined'}°C',
      style: const TextStyle(fontSize: 68, color: Colors.white),
    );
  }
}
