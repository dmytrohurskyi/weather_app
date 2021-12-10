class WeatherData {
  WeatherData({
    this.weather,
    this.main,
    this.visibility,
    this.wind,
    this.dt,
    this.sys,
  });

  WeatherData.fromJson(dynamic json) {
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
  }

  List<Weather>? weather;
  Main? main;
  int? visibility;
  Wind? wind;
  int? dt;
  Sys? sys;
  String locationName = '';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (weather != null) {
      map['weather'] = weather?.map((v) => v.toJson()).toList();
    }
    if (main != null) {
      map['main'] = main?.toJson();
    }
    map['visibility'] = visibility;
    if (wind != null) {
      map['wind'] = wind?.toJson();
    }
    map['dt'] = dt;
    if (sys != null) {
      map['sys'] = sys?.toJson();
    }
    return map;
  }
}

class Sys {
  Sys({
    this.sunrise,
    this.sunset,
  });

  Sys.fromJson(dynamic json) {
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

class Wind {
  Wind({
    this.speed,
  });

  Wind.fromJson(dynamic json) {
    speed = json['speed'];
  }

  double? speed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = speed;
    return map;
  }
}

class Main {
  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
  });

  Main.fromJson(dynamic json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
  }

  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = temp;
    map['feels_like'] = feelsLike;
    map['temp_min'] = tempMin;
    map['temp_max'] = tempMax;
    map['pressure'] = pressure;
    map['humidity'] = humidity;
    return map;
  }
}

class Weather {
  Weather({
    this.main,
    this.description,
  });

  Weather.fromJson(dynamic json) {
    main = json['main'];
    description = json['description'];
  }

  String? main;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['main'] = main;
    map['description'] = description;
    return map;
  }
}
