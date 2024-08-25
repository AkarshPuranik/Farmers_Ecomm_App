import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AlertsPage extends StatefulWidget {
  @override
  _AlertsPageState createState() => _AlertsPageState();
}

class _AlertsPageState extends State<AlertsPage> {
  List<dynamic> _records = [];
  List<dynamic> _filteredRecords = [];
  final TextEditingController _stateController = TextEditingController(text: 'Madhya Pradesh'); // Set default text
  final TextEditingController _districtController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchData(); // Initial fetch with no filters
  }

  Future<void> _fetchData({String? district}) async {
    final String baseUrl = 'https://api.data.gov.in/resource/35985678-0d79-46b4-9ed6-6f13308a1d24';
    final String apiKey = '579b464db66ec23bdd000001cdd3946e44ce4aad7209ff7b23ac571b';
    final String state = 'Madhya Pradesh'; // Fixed state as per your example

    // Base URL with common parameters
    String url = '$baseUrl?api-key=$apiKey&format=json&limit=20&filters%5BState.keyword%5D=$state';

    // Add district filter if provided
    if (district != null && district.isNotEmpty) {
      url += '&filters%5BDistrict.keyword%5D=$district';
    }

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _records = data['records'];
        _filteredRecords = _records; // Initialize filtered list
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  void _search() {
    final district = _districtController.text.trim();
    _fetchData(district: district);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop & Market Prices'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _stateController,
                    decoration: InputDecoration(
                      labelText: 'State',
                      border: OutlineInputBorder(),
                      enabled: false, // Disable state input as it's fixed
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: _districtController,
                    decoration: InputDecoration(
                      labelText: 'District',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _search,
                  child: Text('Search'),
                ),
              ],
            ),
          ),
          Expanded(
            child: _filteredRecords.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
              itemCount: _filteredRecords.length,
              itemBuilder: (context, index) {
                final record = _filteredRecords[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('${record['Commodity']} - ${record['Variety']}'),
                    subtitle: Text('State: ${record['State']}\n'
                        'District: ${record['District']}\n'
                        'Market: ${record['Market']}\n'
                        'Arrival Date: ${record['Arrival_Date']}\n'
                        'Min Price: ${record['Min_Price']}\n'
                        'Max Price: ${record['Max_Price']}\n'
                        'Modal Price: ${record['Modal_Price']}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
