import 'package:flutter/material.dart';
import 'package:weather_app/services/location_service.dart';

class LocationInfoWidget extends StatefulWidget {
  final String location;
  final String date;
  final String time;

  LocationInfoWidget(
      {Key? key,
      required this.location,
      required this.date,
      required this.time})
      : super(key: key);

  @override
  _LocationInfoWidgetState createState() => _LocationInfoWidgetState();
}

class _LocationInfoWidgetState extends State<LocationInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
      child: Column(
        children: [
          Text(
            widget.location,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Updated ${widget.date} at ${widget.time}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[300],
            ),
          )
        ],
      ),
    );
  }
}
