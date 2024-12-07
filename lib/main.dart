import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todos/router.dart';

import 'blocs/todos/todo_bloc.dart';
import 'blocs/todos/todo_event.dart';
import 'core/service_locator.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ToDoBloc>()..add(const LoadToDoEvent()),
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
