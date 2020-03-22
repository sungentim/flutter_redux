import 'package:fish_redux/fish_redux.dart';
import '../model.dart';

class GridState implements Cloneable<GridState> {
  
  List<GridModel> models;   // 存放数据

  @override
  GridState clone() {
    return GridState()
    ..models = models;      //clone规则
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
