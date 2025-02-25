import 'package:flutter/material.dart';

import '../../data/models/todo.dart';
import 'todo_card.dart';

class ToDoList extends StatelessWidget {
  final List<ToDoModel> todos;
  final bool isLoadingMore;
  final bool hasMore;
  final ScrollController scrollController;

  const ToDoList({
    super.key,
    required this.todos,
    required this.isLoadingMore,
    required this.hasMore,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: todos.length + (isLoadingMore ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == todos.length && isLoadingMore) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
        return ToDoCard(todo: todos[index]);
      },
    );
  }
}
