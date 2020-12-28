import 'package:COURSES/src/05/src/models/movie.dart';

class GetMovies {
  const GetMovies();
}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movies);

  final List<Movie> movies;
}

class GetMoviesError {
  const GetMoviesError(this.error);

  final dynamic error;
}
