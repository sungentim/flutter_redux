
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/Entrance_page/page.dart';
import 'package:fish_redux_demo/grid_page/page.dart';
import 'package:fish_redux_demo/list_page/page.dart';
import 'package:flutter/material.dart';
import 'package:fish_redux_demo/store/state.dart';
import 'package:fish_redux_demo/store/store.dart';


Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'entrance_page': EntrancePage(),  //在这里添加页面
      'grid_page': GridPage(),  //添加这一行
      'list_page':ListPage(),
    },
    visitor: (String path,Page<Object,dynamic> page){
        if(page.isTypeof<GlobalBaseState>()){
          page.connectExtraStore<GlobalState>(GlobalStore.store, (Object pagestate,GlobalState appState){
            final GlobalBaseState p = pagestate;
          if (p.themeColor != appState.themeColor) {
            if (pagestate is Cloneable) {
              final Object copy = pagestate.clone();
              final GlobalBaseState newState = copy;
              newState.themeColor = appState.themeColor;
              return newState;
            }
          }
          return pagestate;
          });
        }
    }
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('entrance_page', null),  //把他作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}

