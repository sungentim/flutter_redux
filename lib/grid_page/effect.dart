import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    Lifecycle.initState: _init, //页面初始化
    GridAction.action: _onAction,
    GridAction.openList:_openList,
  });
}

void _onAction(Action action, Context<GridState> ctx) {
}

void _init(Action action, Context<GridState> ctx) {
  ctx.dispatch(GridActionCreator.onLoadData()); //发送事件
}
void _openList(Action action, Context<GridState> ctx) {
  // ctx.dispatch(GridActionCreator.openList()); //发送事件
  Navigator.of(ctx.context).pushNamed('list_page');
}
