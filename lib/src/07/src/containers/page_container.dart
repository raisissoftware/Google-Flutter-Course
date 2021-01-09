import 'package:COURSES/src/07/src/models/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.nextPage;
      },
    );
  }
}
