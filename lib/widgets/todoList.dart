import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/todo.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = [
    Todo(title: 'Learn Dart'),
    Todo(title: 'Try Flutter'),
    Todo(title: 'Be amazed'),
  ];
  _toggleTodo(Todo todo, bool isChecked) {
    // todo.isDone = isChecked;
    setState(() {
      todo.isDone = isChecked;
    });
  }

  //  _buildItem() {}
  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
        value: todo.isDone,
        // checkColor: Colors.yellowAccent, // color of tick Mark
        activeColor: Colors.orange[400],
        title: Text(todo.title),
        onChanged: (bool isChecked) {
          _toggleTodo(todo, isChecked);
        });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
