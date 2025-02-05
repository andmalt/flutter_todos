import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/data/models/todo.dart';

import '../../blocs/todos/todo_bloc.dart';
import '../../blocs/todos/todo_event.dart';
import '../../blocs/todos/todo_state.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    context.read<ToDoBloc>().add(const LoadToDoEvent());
  }

  void _onScroll() {
    final bloc = context.read<ToDoBloc>();
    bloc.state.maybeWhen(
      loaded: (todos, isLoadingMore, hasMore) {
        if (!isLoadingMore &&
            hasMore &&
            _scrollController.position.pixels >=
                _scrollController.position.maxScrollExtent - 150) {
          bloc.add(const LoadMoreToDoEvent());
        }
      },
      orElse: () {},
    );
  }

  Future<void> _refreshList() async {
    context.read<ToDoBloc>().add(const LoadToDoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ToDo List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: BlocBuilder<ToDoBloc, TodoState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: Text(
                'Welcome! Pull down to load ToDos.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
              ),
            ),
            loaded: (todos, isLoadingMore, hasMore) => RefreshIndicator(
              color: Colors.deepPurple,
              onRefresh: _refreshList,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: todos.length + (isLoadingMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == todos.length && isLoadingMore) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                        ),
                      ),
                    );
                  }
                  final todo = todos[index];
                  return _buildToDoCard(todo);
                },
              ),
            ),
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildToDoCard(ToDoModel todo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: todo.completed ? Colors.green : Colors.red,
            child: Icon(
              todo.completed ? Icons.check : Icons.clear,
              color: Colors.white,
            ),
          ),
          title: Text(
            todo.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            'User: ${todo.userId}',
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Edit button
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blue),
                onPressed: () => _showEditDialog(todo),
              ),
              // Delete button
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  context.read<ToDoBloc>().add(DeleteToDoEvent(todo));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showEditDialog(ToDoModel todo) async {
    final controller = TextEditingController(text: todo.title);
    final newTitle = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit ToDo'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'Enter new title',
            ),
            minLines: 1,
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, null),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, controller.text),
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (newTitle != null && newTitle.isNotEmpty) {
      if (mounted) {
        context.read<ToDoBloc>().add(
              UpdateToDoEvent(
                todo.copyWith(title: controller.text),
              ),
            );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
