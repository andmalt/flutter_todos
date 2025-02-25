import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/todos/todo_bloc.dart';
import '../../blocs/todos/todo_event.dart';
import '../../data/models/todo.dart';

class ToDoCard extends StatefulWidget {
  final ToDoModel todo;

  const ToDoCard({super.key, required this.todo});

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _showEditDialog(ToDoModel todo) async {
    _controller.text = todo.title;
    final newTitle = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit ToDo'),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Enter the new title',
            ),
            minLines: 1,
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, _controller.text),
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (newTitle != null && newTitle.isNotEmpty && mounted) {
      context.read<ToDoBloc>().add(
            UpdateToDoEvent(
              todo.copyWith(title: newTitle),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: widget.todo.completed ? Colors.green : Colors.red,
            child: Icon(
              widget.todo.completed ? Icons.check : Icons.clear,
              color: Colors.white,
            ),
          ),
          title: Text(
            widget.todo.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            'User: ${widget.todo.userId}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () => _showEditDialog(widget.todo),
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  context.read<ToDoBloc>().add(DeleteToDoEvent(widget.todo));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
