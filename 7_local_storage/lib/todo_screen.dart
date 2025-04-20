import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:local_storage/todo.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoBox = Hive.box<Todo>('todoBox');
  final TextEditingController _controller = TextEditingController();

  void _addTask() {
    if (_controller.text.isNotEmpty) {
      final newTask = Todo(title: _controller.text);
      _todoBox.add(newTask);
      _controller.clear();
      setState(() {});
    }
  }

  void _toggleTask(int index) {
    final task = _todoBox.getAt(index);
    if (task != null) {
      task.completed = !task.completed;
      _todoBox.putAt(index, task);
      setState(() {});
    }
  }

  void _deleteTask(int index) {
    _todoBox.deleteAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: "Add a new task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addTask,
                ),
              ],
            ),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _todoBox.listenable(),
              builder: (context, value, child) {
                if (value.isEmpty) {
                  return const Center(
                    child: Text("No Task"),
                  );
                }
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final task = value.getAt(index);
                    return ListTile(
                      title: Text(
                        task!.title,
                        style: TextStyle(
                          decoration: task.completed
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      leading: Checkbox(
                        value: task.completed,
                        onChanged: (value) => _toggleTask(index),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _deleteTask(index),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
