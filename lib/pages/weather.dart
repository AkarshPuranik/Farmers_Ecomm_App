import 'package:flutter/material.dart';
import 'package:gee_com/auth/weather_service.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final WeatherService _weatherService = WeatherService();
  final TextEditingController _controller = TextEditingController();
  Map<String, dynamic>? _weatherData;
  Map<String, dynamic>? _forecastData;
  bool _isLoading = false;

  void _fetchWeather() async {
    setState(() {
      _isLoading = true;
    });
    try {
      _weatherData = await _weatherService.fetchWeather(_controller.text);
      _forecastData = await _weatherService.fetchForecast(_controller.text);
    } catch (e) {
      _weatherData = null;
      _forecastData = null;
    }
    setState(() {
      _isLoading = false;
    });
  }

  Widget _buildWeatherInfo() {
    if (_weatherData == null) {
      return Text(
        'No weather data available',
        style: TextStyle(color: Colors.redAccent, fontSize: 16),
      );
    }
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      shadowColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              _weatherData!['name'],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thermostat, color: Colors.orangeAccent, size: 30),
                SizedBox(width: 10),
                Text(
                  '${_weatherData!['main']['temp']}°C',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.water_drop, color: Colors.blueAccent, size: 24),
                SizedBox(width: 10),
                Text(
                  'Humidity: ${_weatherData!['main']['humidity']}%',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wb_sunny, color: Colors.yellowAccent, size: 24),
                SizedBox(width: 10),
                Text(
                  'Condition: ${_weatherData!['weather'][0]['description']}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForecastInfo() {
    if (_forecastData == null) {
      return Text(
        'No forecast data available',
        style: TextStyle(color: Colors.redAccent, fontSize: 16),
      );
    }
    return Expanded(
      child: ListView.builder(
        itemCount: _forecastData!['list'].length,
        itemBuilder: (context, index) {
          var forecast = _forecastData!['list'][index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.greenAccent),
              title: Text(
                '${forecast['dt_txt']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.thermostat, color: Colors.orangeAccent, size: 20),
                  SizedBox(width: 5),
                  Text('${forecast['main']['temp']}°C'),
                  SizedBox(width: 15),
                  Icon(Icons.wb_sunny, color: Colors.yellowAccent, size: 20),
                  SizedBox(width: 5),
                  Text('Condition: ${forecast['weather'][0]['description']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Forecast'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter village or city name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search, color: Colors.teal),
                  onPressed: _fetchWeather,
                ),
              ),
            ),
            SizedBox(height: 16),
            _isLoading
                ? CircularProgressIndicator()
                : _buildWeatherInfo(),
            SizedBox(height: 16),
            _buildForecastInfo(),
          ],
        ),
      ),
    );
  }
}
