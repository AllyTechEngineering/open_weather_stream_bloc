import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String description;
  final String icon;
  final double temp;
  final double tempMin;
  final double tempMax;
  final String name;
  final String country;
  final DateTime lastUpdated;
  final double speed;
  final int deg;
  Weather({
    required this.description,
    required this.icon,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.name,
    required this.country,
    required this.lastUpdated,
    required this.speed,
    required this.deg,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final weather = json['weather'][0];
    final main = json['main'];
    final wind = json['wind'];

    return Weather(
      description: weather['description'],
      icon: weather['icon'],
      temp: main['temp'],
      tempMin: main['temp_min'],
      tempMax: main['temp_max'],
      speed: wind['speed'],
      deg: wind['deg'],
      name: '',
      country: '',
      lastUpdated: DateTime.now(),
    );
  }

  factory Weather.initial() => Weather(
        description: '',
        icon: '',
        temp: 100.0,
        tempMin: 100.0,
        tempMax: 100.0,
        speed: 0.0,
        deg: 0,
        name: '',
        country: '',
        lastUpdated: DateTime(1970),
      );

  @override
  List<Object> get props {
    return [
      description,
      icon,
      temp,
      tempMin,
      tempMax,
      speed,
      deg,
      name,
      country,
      lastUpdated,
    ];
  }

  @override
  String toString() {
    return 'Weather(description: $description, icon: $icon, temp: $temp, tempMin: $tempMin, tempMax: $tempMax, name: $name, country: $country, lastUpdated: $lastUpdated, speed: $speed, deg: $deg)';
  }

  Weather copyWith({
    String? description,
    String? icon,
    double? temp,
    double? tempMin,
    double? tempMax,
    String? name,
    String? country,
    DateTime? lastUpdated,
    double? speed,
    int? deg,
  }) {
    return Weather(
      description: description ?? this.description,
      icon: icon ?? this.icon,
      temp: temp ?? this.temp,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      name: name ?? this.name,
      country: country ?? this.country,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      speed: speed ?? this.speed,
      deg: deg ?? this.deg,
    );
  }
}
