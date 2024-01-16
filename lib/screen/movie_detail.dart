import 'package:flutter/material.dart';
import '../model/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie selectedMovie;
  const MovieDetail({Key? key, required this.selectedMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String path;
    double screenWeight =
        MediaQuery.of(context).size.height;

    if (selectedMovie.posterPath != null) {
      path = 'https://image.tmdb.org/t/p/w500${selectedMovie.posterPath}';
    } else {
      path = 'https://image.freeimages.com/images/large-previews/5eb/movie-clapboard-118433';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMovie.title}'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                height: screenWeight / 1.5,
                child: Image.network(path),
              ),
              Text('${selectedMovie.overview}'),
            ],
          ),
        ),
      ));
  }
}