import 'dart:async';

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3)); // Simulating network delay
  
  bool fetchSuccess = true; // Change to false to simulate an error
  
  if (fetchSuccess) {
    return 'Weather: Sunny, 25°C';
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  print('Fetching weather data...');
  
  try {
    String weather = await fetchWeatherData();
    print('Weather data received: $weather');
  } catch (e) {
    print('Error: $e');
  }
  
  print('Process completed.');
}
