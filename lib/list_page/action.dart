import 'package:fish_redux/fish_redux.dart';
import 'Item_component/state.dart';
enum ListAction { action,initList }

class ListActionCreator {
  static Action onAction() {
    return const Action(ListAction.action);
  }
  static Action initList(List<ItemState> items) {
    return Action(ListAction.initList,payload: items);
  }
}
