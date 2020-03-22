import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/list_page/Item_component/state.dart';
import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    Lifecycle.initState:_initAction,
  });
}

void _onAction(Action action, Context<ListState> ctx) {
}
void _initAction(Action action, Context<ListState> ctx) {
  List<ItemState> mockData = [
    ItemState(type:0,title:'标题0',content:'这是内容0'),
    ItemState(type:1,title:'标题1',content:'这是内容1'),
    ItemState(type:2,title:'标题2',content:'这是内容2'),
    ItemState(type:3,title:'标题3',content:'这是内容3'),
    ItemState(type:4,title:'标题4',content:'这是内容4'),
    ItemState(type:5,title:'标题5',content:'这是内容5'),
    ItemState(type:6,title:'标题6',content:'这是内容6'),
    ItemState(type:7,title:'标题7',content:'这是内容7'),
    ItemState(type:8,title:'标题8',content:'这是内容8'),
    ItemState(type:9,title:'标题9',content:'这是内容9'),
  ];
  ctx.dispatch(ListActionCreator.initList(mockData));
}
