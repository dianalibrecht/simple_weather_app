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
        title: const Text("Weather App",
            style: TextStyle(
                fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold)),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Willkommen zur Weather App!",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Bielefeld",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(" 30 Grad, Gewitter"),
            Text("Heilbronn ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text("25 Grad, Sonnig"),
          ],
        ),
      ),
    );
  }
}
