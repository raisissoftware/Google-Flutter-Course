import 'package:COURSES/src/07/src/actions/index.dart';
import 'package:COURSES/src/07/src/data/yts_api.dart';
import 'package:COURSES/src/07/src/epics/app_epics.dart';
import 'package:COURSES/src/07/src/models/index.dart';
import 'package:COURSES/src/07/src/presentation/home_page.dart';
import 'package:COURSES/src/07/src/presentation/movie_detail.dart';
import 'package:COURSES/src/07/src/reducer/reducer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:http/http.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final Client client = Client();
  final YtsApi ytsApi = YtsApi(client: client);
  final AppEpics epics = AppEpics(ytsApi: ytsApi);
  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: initialState,
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  store.dispatch(const GetMovies());

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        routes: <String, WidgetBuilder>{'/movieDetail': (BuildContext context) => const MovieDetail()},
      ),
    );
  }
}
