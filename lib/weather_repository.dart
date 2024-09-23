import 'package:simple_weather_app/weather_data.dart';

class WeatherRepository {
  final WeatherData _cityData = WeatherData(
      city: "Bielefeld", temperature: 30.5, weatherCondition: "Gewitter");

  WeatherData getWeather() => _cityData;
}
