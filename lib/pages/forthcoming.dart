import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/appBar.dart';
import 'package:my_todoist/widgets/drawer.dart';

class ForthComing extends StatelessWidget {
  // const Today({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "Предстоящее"),
      drawer: myDrawer(),
      body: Container(child: Text('Страничка предстоящее')),
    );
  }
}
