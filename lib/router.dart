import 'package:flutter_todos/presentation/pages/todo_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ToDoPage(),
    ),
  ],
);
