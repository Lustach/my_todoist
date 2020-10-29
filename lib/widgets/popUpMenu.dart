import 'package:flutter/material.dart';

enum MenuOption { Save, Disacrd, Test }

class PopUpOptionMenu extends StatelessWidget {
  const PopUpOptionMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(child: Text('Send'), value: MenuOption.Save),
          PopupMenuItem(child: Text('Ses'), value: MenuOption.Save),
          PopupMenuItem(child: Text('Stes'), value: MenuOption.Save),
        ];
      },
    );
  }
}
