
// main.dart

import 'package:flutter/material.dart';

void main() {
  runApp(BaggageNotificationApp());
}

class BaggageNotificationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baggage Notification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BaggageNotificationScreen(),
        '/damageReport': (context) => DamageReportScreen(),
        '/photoUpload': (context) => PhotoUploadScreen(),
      },
    );
  }
}

class BaggageNotificationScreen extends StatelessWidget {
  final TextEditingController baggageTagController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baggage Notification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Your Baggage Tag or Receipt Number:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: baggageTagController,
                decoration: InputDecoration(
                  labelText: 'Baggage Tag or Receipt Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _notifyBaggageArrival(context, baggageTagController.text);
              },
              child: Text('Notify Me'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/damageReport');
              },
              child: Text('Report Damaged Baggage'),
            ),
          ],
        ),
      ),
    );
  }

  void _notifyBaggageArrival(BuildContext context, String baggageTag) {
    // Placeholder implementation to simulate notification request
    print('Notification sent for baggage tag: $baggageTag');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification'),
          content: Text('You will be notified when your baggage arrives.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class DamageReportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Damage Report'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Upload Photo of Damaged Baggage:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/photoUpload');
              },
              child: Text('Upload Photo'),
            ),
          ],
        ),
      ),
    );
  }
}

class PhotoUploadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload Photo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select or Capture a Photo:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder implementation for photo selection/capture
              },
              child: Text('Select Photo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder implementation for uploading photo
              },
              child: Text('Upload'),
            ),
          ],
        ),
      ),
    );
  }
}
 