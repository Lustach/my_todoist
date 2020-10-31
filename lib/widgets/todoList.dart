import 'package:flutter/material.dart';
import 'package:my_todoist/widgets/todo.dart';
import 'package:my_todoist/widgets/newTodoDialog.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Todo> todos = [
    Todo(title: 'Learn Dart'),
    Todo(title: 'Try Flutter'),
    // Todo(title: 'Be amazed'),
    // Todo(title: 'Learn Dart'),
    // Todo(title: 'Try Flutter'),
    // Todo(title: 'Be amazed'),
    // Todo(title: 'Learn Dart'),
    // Todo(title: 'Try Flutter'),
    // Todo(title: 'Be amazed'),
    // Todo(title: 'Learn Dart'),
    // Todo(title: 'Try Flutter'),
    // Todo(title: 'Be amazed'),
    // Todo(title: 'Learn Dart'),
    // Todo(title: 'Try Flutter'),
    // Todo(title: 'Be amazed'),
  ];
  TextEditingController controller = new TextEditingController();
  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
      // todos.remove(todo);
    });
  }

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
        value: todo.isDone,
        activeColor: Colors.orange[400],
        title: Text(todo.title),
        onChanged: (bool isChecked) {
          _toggleTodo(todo, isChecked);
        });
  }

  _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );
    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: _buildItem,
        itemCount: todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
        backgroundColor: Colors.orange[500],
      ),
    );
  }
}
