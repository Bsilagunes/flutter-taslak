


// main.dart
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  bool isFavorite(Movie movie) {
    // Check if the movie is in favorites
    // This could be implemented using persistent storage like SharedPreferences or database
    return false;
  }

  void toggleFavorite(Movie movie) {
    // Toggle favorite status of the movie
    // This could be implemented using persistent storage like SharedPreferences or database
  }

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
                  trailing: IconButton(
                    icon: Icon(
                      isFavorite(filteredMovies[index])
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        toggleFavorite(filteredMovies[index]);
                      });
                    },
                  ),
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
                _launchTrailer(movie.trailerUrl);
              },
              child: Text('Watch Trailer'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchTrailer(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class Movie {
  final String title;
  final double rating;
  final String trailerUrl;

  Movie({required this.title, required this.rating, required this.trailerUrl});
}
