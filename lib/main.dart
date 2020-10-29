import 'package:flutter/material.dart';
import 'package:my_todoist/models/menu_navigation.dart';
import 'package:my_todoist/pages/today.dart';
import 'package:my_todoist/widgets/drawer.dart';
import 'package:provider/provider.dart';
import 'package:my_todoist/widgets/appBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // List<Tile> tasks = Provider.of<MenuNavigation>(context);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar("Home Page"),
        drawer: myDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, "/today"), //dont work
          child: Icon(Icons.add),
          backgroundColor: Colors.orange[600],
        ),
      ),
      // theme: ThemeData(
      //   primaryColor: Colors.blue,
      //   accentColor: Colors.green,
      //   textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      // ),
      // title: 'Flutter Demo',
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/today',
      routes: <String, WidgetBuilder>{
        // '/incoming' : (BuildContext context) => Incoming(),
        // '/forthcoming' : (BuildContext context) => Forthcoming(),
        '/today': (BuildContext context) => Today(),
      },
    );
  }
}
