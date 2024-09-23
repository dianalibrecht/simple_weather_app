import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("weather app"),
      ),
      body: Container(
        child: const Text(
          "Willkommen zur Weather App!",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
