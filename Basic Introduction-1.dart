 
 import 'package:flutter/material.dart';

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
      home: MovieListScreen(),
    );
  }
}

class MovieListScreen extends StatelessWidget {
  final List<String> movies = [
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Knight',
    'Schindler\'s List',
    'Pulp Fiction',
    'The Lord of the Rings',
    'Forrest Gump',
    'Inception',
    'The Matrix',
    'Interstellar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Selection'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movies[index]),
            onTap: () {
              _showMovieDetails(context, movies[index]);
            },
          );
        },
      ),
    );
  }

  void _showMovieDetails(BuildContext context, String movie) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Movie Details'),
          content: Text('Selected Movie: $movie'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

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
      },
    );
  }
}

class MovieListScreen extends StatelessWidget {
  final List<Movie> movies = [
    Movie(
      title: 'The Shawshank Redemption',
      rating: 9.3,
      trailerUrl: 'https://www.youtube.com/watch?v=6hB3S9bIaco',
    ),
    Movie(
      title: 'The Godfather',
      rating: 9.2,
      trailerUrl: 'https://www.youtube.com/watch?v=sY1S34973zA',
    ),
    // Add more movies here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Selection'),
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movies[index].title),
            subtitle: Text('Rating: ${movies[index].rating.toString()}'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/movieDetails',
                arguments: movies[index],
              );
            },
          );
        },
      ),
    );
  }
}

class MovieDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context).settings.arguments as Movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating: ${movie.rating}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Open movie trailer in a web browser
                // You can also use packages like url_launcher to open URLs within the app
              },
              child: Text('Watch Trailer'),
            ),
          ],
        ),
      ),
    );
  }
}

class Movie {
  final String title;
  final double rating;
  final String trailerUrl;

  Movie({required this.title, required this.rating, required this.trailerUrl});
}
import 'package:flutter/material.dart';

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
      },
    );
  }
}

class MovieListScreen extends StatefulWidget {
  @override
  _MovieListScreenState createState() => _MovieListScreenState();
}

class _MovieListScreenState extends State<MovieListScreen> {
  List<Movie> movies = [
    Movie(
      title: 'The Shawshank Redemption',
      rating: 9.3,
      trailerUrl: 'https://www.youtube.com/watch?v=6hB3S9bIaco',
    ),
    Movie(
      title: 'The Godfather',
      rating: 9.2,
      trailerUrl: 'https://www.youtube.com/watch?v=sY1S34973zA',
    ),
    // Add more movies here
  ];

  List<Movie> filteredMovies = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    filteredMovies = movies;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Selection'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  filteredMovies = movies
                      .where((movie) => movie.title
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
              },
              decoration: InputDecoration(
                labelText: 'Search Movies',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredMovies.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredMovies[index].title),
                  subtitle: Text(
                      'Rating: ${filteredMovies[index].rating.toString()}'),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/movieDetails',
                      arguments: filteredMovies[index],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MovieDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = ModalRoute.of(context).settings.arguments as Movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating: ${movie.rating}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Open movie trailer in a web browser
                // You can also use packages like url_launcher to open URLs within the app
              },
              child: Text('Watch Trailer'),
            ),
          ],
        ),
      ),
    );
  }
}

