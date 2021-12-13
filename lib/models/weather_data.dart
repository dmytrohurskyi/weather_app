import 'package:weather_app/models/nested_classes/time_stamps.dart';
import 'package:weather_app/models/nested_classes/weather.dart';
import 'package:weather_app/models/nested_classes/wind.dart';

import 'nested_classes/main_information.dart';

class WeatherData {
  WeatherData({
    this.weather,
    this.mainInformation,
    this.visibility,
    this.wind,
    this.dt,
    this.timeStamps,
  });

  WeatherData.fromJson(dynamic json) {
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    mainInformation =
        json['main'] != null ? MainInformation.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    dt = json['dt'];
    timeStamps = json['sys'] != null ? TimeStamps.fromJson(json['sys']) : null;
  }

  List<Weather>? weather;
  MainInformation? mainInformation;
  int? visibility;
  Wind? wind;
  int? dt;
  TimeStamps? timeStamps;
  String locationName = '';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    if (mainInformation != null) {
      map['main'] = mainInformation?.toJson();
    }
    map['visibility'] = visibility;
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['dt'] = dt;
    if (timeStamps != null) {
      map['sys'] = timeStamps?.toJson();
    }
    return map;
  }
}
