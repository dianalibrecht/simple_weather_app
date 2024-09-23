// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:simple_weather_app/weather_data.dart';
import 'package:simple_weather_app/weather_repository.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.repository});

  final WeatherRepository repository;

  @override
  Widget build(BuildContext context) {
    final WeatherData city = repository.getWeather();
    final double temperature = city.temperature;
    final String weatherCondition = city.weatherCondition;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App",
            style: TextStyle(
                fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Willkommen zur Weather App!",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(city.city),
            Text("Die Temperatur beträgt: ${city.temperature}°C"),
            Text("Wetter: ${city.weatherCondition}"),
            /*Text("Bielefeld",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(" 30,5 Grad, Gewitter"),
            Text("Heilbronn ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("25,2 Grad, Sonnig"),*/
          ],
        ),
      ),
    );
  }
}
