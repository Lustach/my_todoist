import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/appBar.dart';
import 'package:my_todoist/widgets/drawer.dart';

class Today extends StatelessWidget {
  // const Today({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Сегодня!!!"),
      drawer: myDrawer(),
      body: Container(child: Text('Страничка сегодня')),
    );
  }
}
