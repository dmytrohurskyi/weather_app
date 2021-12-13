class TimeStamps {
  TimeStamps({
    this.sunrise,
    this.sunset,
  });

  TimeStamps.fromJson(dynamic json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  int? sunrise;
  int? sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sunrise'] = sunrise;
    map['sunset'] = sunset;
    return map;
  }
}