import 'package:fish_redux/fish_redux.dart';

enum EntranceAction { action, openGrid }//增加openGrid

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }
  //我们定义的
  static Action onOpenGrid() {
    return const Action(EntranceAction.openGrid);
  }
}
