import 'package:fish_redux/fish_redux.dart';
enum ItemAction { action,themeChange }

class ItemActionCreator {
  static Action onAction() {
    return const Action(ItemAction.action);
  }
  static Action themeChange() {
    return const Action(ItemAction.themeChange);
  }
}
