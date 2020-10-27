import 'dart:collection';

import 'package:flutter/material.dart';

class Tile {
  final String title;
  final String routeName;
  final IconData icon;
  final Color color;
  Tile({@required this.title, this.routeName, this.icon, @required this.color});
}

class MenuNavigation {
  List<Tile> _items = [
    Tile(
        title: 'Входящие',
        routeName: '/incoming',
        color: Colors.blue,
        icon: Icons.panorama_horizontal),
    Tile(
        title: 'Сегодня',
        routeName: '/today',
        color: Colors.blue,
        icon: Icons.panorama_horizontal),
    Tile(
        title: 'Предстоящее',
        routeName: '/forthcoming',
        color: Colors.blue,
        icon: Icons.panorama_horizontal)
  ];
  UnmodifiableListView<Tile> get items => UnmodifiableListView(_items);
  Tile getElementById(String title) =>
      _items.singleWhere((value) => value.title == title);
}
