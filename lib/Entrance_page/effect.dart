import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;  //注意1
import 'action.dart';
import 'state.dart';

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.openGrid: _onOpenGrid,   //接收openGrid事件 
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {
}

//处理openGrid事件
void _onOpenGrid(Action action, Context<EntranceState> ctx) {
  Navigator.of(ctx.context).pushNamed('grid_page', arguments: null);    //注意2
}

