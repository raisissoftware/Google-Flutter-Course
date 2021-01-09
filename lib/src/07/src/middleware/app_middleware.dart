import 'package:COURSES/src/07/src/actions/index.dart';
import 'package:COURSES/src/07/src/data/yts_api.dart';
import 'package:COURSES/src/07/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  const AppMiddleware({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware < AppState, GetMoviesStart>(_getMoviesStart),
    ];
  }

  Future<void> _getMoviesStart(Store<AppState> store, GetMoviesStart action, NextDispatcher next) async {
    next(action);

    if (action is GetMoviesStart) {
      try {
        final List<Movie> movies =
            await _ytsApi.getMovies(store.state.nextPage, store.state.quality, store.state.genre, store.state.orderBy);

        final GetMoviesSuccessful successful = GetMovies.successful(movies);
        store.dispatch(successful);
      } catch (e) {
        final GetMoviesError error = GetMovies.error(e);
        store.dispatch(error);
      }
    }
  }
}
