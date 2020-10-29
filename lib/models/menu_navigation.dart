import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:my_todoist/pages/forthcoming.dart';
import 'package:my_todoist/pages/incoming.dart';
import 'package:my_todoist/pages/today.dart';

class Tile {
  final String title;
  final String routeName;
  final IconData icon;
  final Color color;
  final Widget page;
  Tile(
      {@required this.title,
      this.routeName,
      this.icon,
      @required this.color,
      @required this.page});
}

class MenuNavigation {
  List<Tile> _items = [
    Tile(
        title: 'Входящие',
        routeName: '/incoming',
        color: Colors.blue,
        icon: Icons.calendar_today,
        page: Incoming()),
    Tile(
        title: 'Сегодня',
        routeName: '/today',
        color: Colors.blue,
        icon: Icons.today,
        page: Today()),
    Tile(
        title: 'Предстоящее',
        routeName: '/forthcoming',
        color: Colors.blue,
        icon: Icons.date_range,
        page: ForthComing())
  ];
  UnmodifiableListView<Tile> get items => UnmodifiableListView(_items);
  Tile getElementById(String title) =>
      _items.singleWhere((value) => value.title == title);
}
