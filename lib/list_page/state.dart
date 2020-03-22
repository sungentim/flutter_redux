import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list_page/Item_component/state.dart';

class ListState implements Cloneable<ListState> {
  List<ItemState> items;
  @override
  ListState clone() {
    return ListState()
    ..items = items;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
