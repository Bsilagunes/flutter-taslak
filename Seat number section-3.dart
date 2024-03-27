
// main.dart (Continued from previous code)

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vibration/vibration.dart';

void main() {
  runApp(InFlightEntertainmentApp());
}

class InFlightEntertainmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'In-Flight Entertainment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MovieListScreen(),
        '/movieDetails': (context) => MovieDetailsScreen(),
        '/seatNumber': (context) => SeatNumberScreen(),
      },
    );
  }
}

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  // Existing code for movie list screen

  @override
  Widget build(BuildContext context) {
    // Existing build method
  }
}

class MovieDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Existing code for movie details screen
  }
}

class SeatNumberScreen extends StatelessWidget {
  final TextEditingController seatNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seat Number Warning System'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please Enter Your Seat Number:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: seatNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Seat Number',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _startVibration(int.parse(seatNumberController.text));
              },
              child: Text('Start Seat Alert'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _startVibration(int targetSeatNumber) async {
    // Simulate seat approach by checking the difference between target seat number and current seat number
    int currentSeatNumber = 15; // Example: Current seat number
    int difference = (targetSeatNumber - currentSeatNumber).abs();

    // Vibrate if the difference is within a certain range (e.g., 2 seats away)
    if (difference <= 2) {
      await Vibration.vibrate(duration: 1000);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Seat Alert'),
            content: Text(
              'You are not close to your seat yet. Please proceed to your assigned seat.',
            ),
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
}

class Movie {
  final String title;
  final double rating;
  final String trailerUrl;

  Movie({required this.title, required this.rating, required this.trailerUrl});
}
