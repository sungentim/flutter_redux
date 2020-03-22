
import 'package:fish_redux/fish_redux.dart';
import 'package:fish_redux_demo/Entrance_page/page.dart';
import 'package:fish_redux_demo/grid_page/page.dart';
import 'package:fish_redux_demo/list_page/page.dart';
import 'package:flutter/material.dart';



Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'entrance_page': EntrancePage(),  //在这里添加页面
      'grid_page': GridPage(),  //添加这一行
      'list_page':ListPage(),
    },
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

