import 'package:fish_redux/fish_redux.dart';
import '../model.dart';
import 'package:fish_redux_demo/store/state.dart';
import 'dart:ui';

class GridState implements Cloneable<GridState>,GlobalBaseState {
  
  List<GridModel> models;   // 存放数据

  @override
  Color themeColor;

  @override
  GridState clone() {
    return GridState()
    ..models = models;      //clone规则
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
