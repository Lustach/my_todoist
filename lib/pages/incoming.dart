import 'package:flutter/material.dart';

class Incoming extends StatelessWidget {
  // const Today({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Входящие')),
      body: Center(child: Text('Страничка входящие')),
    );
  }
}
