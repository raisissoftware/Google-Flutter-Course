import 'package:COURSES/src/05/src/actions/get_movies.dart';
import 'package:COURSES/src/05/src/data/yts_api.dart';
import 'package:COURSES/src/05/src/models/app_state.dart';
import 'package:COURSES/src/05/src/models/movie.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      _getMovies,
    ];
  }

  Future<void> _getMovies(Store<AppState> store, dynamic action, NextDispatcher next) async {
    next(action);

    if (action is GetMovies) {
      try {
        final List<Movie> movies = await _ytsApi.getMovies();

        final GetMoviesSuccessful successful = GetMoviesSuccessful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetMoviesError error = GetMoviesError(e);
        store.dispatch(error);
      }
    }
  }
}
