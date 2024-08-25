import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final DateTime? registrationDateTime;

  NotificationPage({required this.registrationDateTime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Registration Successful',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 20),
            Text(
              'You have been successfully registered with KisanSeva.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            if (registrationDateTime != null) ...[
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.grey, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Date: ${_formatDate(registrationDateTime!)}',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.access_time, color: Colors.grey, size: 20),
                  SizedBox(width: 10),
                  Text(
                    'Time: ${_formatTime(registrationDateTime!)}',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ] else ...[
              Text(
                'Date and time of registration are not available.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String _formatTime(DateTime dateTime) {
    return '${dateTime.hour}:${dateTime.minute}';
  }
}
