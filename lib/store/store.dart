import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list_page/reducer.dart';
import 'state.dart';

class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
    _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}
