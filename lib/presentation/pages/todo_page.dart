import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/presentation/widgets/todo_list.dart';

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
              child: ToDoList(
                todos: todos,
                isLoadingMore: isLoadingMore,
                hasMore: hasMore,
                scrollController: _scrollController,
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
