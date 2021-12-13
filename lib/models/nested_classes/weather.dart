class Weather {
  Weather({
    this.shortDescription,
    this.description,
  });

  Weather.fromJson(dynamic json) {
    shortDescription = json['main'];
    description = json['description'];
  }

  String? shortDescription;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['main'] = shortDescription;
    map['description'] = description;
    return map;
  }
}