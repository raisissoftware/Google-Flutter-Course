import 'package:COURSES/src/07/src/actions/index.dart';
import 'package:COURSES/src/07/src/models/index.dart';
import 'package:COURSES/src/07/src/data/yts_api.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AppEpics {
  const AppEpics({@required YtsApi ytsApi})
      : assert(ytsApi != null),
        _ytsApi = ytsApi;

  final YtsApi _ytsApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetMoviesStart>(_getMoviesStart),
    ]);
  }

  Stream<dynamic> _getMoviesStart(Stream<GetMoviesStart> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 500))
        .asyncMap((GetMoviesStart event) => _ytsApi.getMovies(
              store.state.nextPage,
              store.state.genre,
              store.state.quality,
              store.state.orderBy,
            ))
        .map((List<Movie> event) => GetMovies.successful(event))
        .onErrorReturnWith((dynamic error) => GetMovies.error(error));
  }
}
