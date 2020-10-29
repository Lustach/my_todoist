import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/popUpMenu.dart';

Widget myAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.orange[600],
    //background color of Appbar to green
    title: Text(title),
    // automaticallyImplyLeading: false,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          //action for search icon button
        },
      ),
      PopUpOptionMenu(), //
      // IconButton(
      //   icon: Icon(Icons.more_vert),
      //   onPressed: () {
      //     //action for user icon button
      //   },
      // )
    ],
  );
}
