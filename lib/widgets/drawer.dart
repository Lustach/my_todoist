import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todoist/models/menu_navigation.dart';
import 'package:my_todoist/pages/today.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = MenuNavigation();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100.0,
            child: DrawerHeader(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    'Lusta.vlad2001',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.orange[600],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              ...menu.items.map((value) {
                return ListTile(
                  leading: Icon(value.icon),
                  title: Text(value.title),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => value.page));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Today()));
                    // Navigator.pop(context);
                  },
                  // tileColor: value.color,
                );
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}
