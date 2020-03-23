import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list_page/Item_component/state.dart';
import 'package:fish_redux_demo/store/state.dart';
import 'dart:ui';

class ListState implements Cloneable<ListState>,GlobalBaseState {
  List<ItemState> items;
  @override
  Color themeColor;
  @override
  ListState clone() {
    return ListState()
    ..items = items
    ..themeColor = themeColor;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
