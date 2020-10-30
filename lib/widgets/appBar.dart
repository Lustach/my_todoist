import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/popUpMenu.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  MyAppBar({Key key, this.title: 'justforescapeerrors'})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);
  String title;
  final Size preferredSize; // default is 56.0
  @override
  _MyAppBarState createState() => _MyAppBarState(title);
}

class _MyAppBarState extends State<MyAppBar> {
  _MyAppBarState(this.title);
  String title;
  Widget appBarTitle;
  Icon searchBtn = Icon(Icons.search);
  @override
  void initState() {
    super.initState();
    this.appBarTitle = Text(widget.title);
  }

  void setInput() {
    setState(() {
      if (this.searchBtn.icon == Icons.search) {
        this.searchBtn = new Icon(Icons.close);
        // widget.title= new TextField(autofocus: true,)
        appBarTitle = new TextField(
            autofocus: true,
            cursorColor: Color(0xFFFAF2FB),
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.white),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white),
            ));
      } else {
        this.searchBtn = Icon(Icons.search);
        appBarTitle = Text(widget.title);
      }
    });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   Widget appBarTitle = Text(widget.title);
  // }

  @override
  Widget build(
    BuildContext context,
  ) {
    // Widget appBarTitle = Text(title);
    return AppBar(
      backgroundColor: Colors.orange[600],
      //background color of Appbar to green
      title: appBarTitle,
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
          icon: searchBtn,
          onPressed: () {
            setInput();
            //action for search icon button
          },
        ),
        PopUpOptionMenu(),
      ],
    );
  }
}

// class

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
      PopUpOptionMenu(),
    ],
  );
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("Sample App Bar"));
  }
}

// class MyHomePage extends StatefulWidget implements PreferredSizeWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => throw UnimplementedError();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: myAppBar('АЛЛЛО'),
//     );
//   }
// }
