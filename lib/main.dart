import 'package:flutter/material.dart';
import 'package:simple_weather_app/weather_app.dart';
import 'package:simple_weather_app/weather_repository.dart';

void main() {
  final WeatherRepository weatherRepository = WeatherRepository();

  runApp(MainApp(repository: weatherRepository));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.repository});

  final WeatherRepository repository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(repository: repository),
    );
  }
}
