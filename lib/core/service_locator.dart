import 'package:flutter_todos/domain/repositories/todo_repositories.dart';
import 'package:flutter_todos/domain/usercases/delete_todo.dart';
import 'package:flutter_todos/domain/usercases/update_todo.dart';
import 'package:get_it/get_it.dart';
import '../data/datasources/api/api_datasource.dart';
import '../data/datasources/db/app_database.dart';
import '../data/datasources/db/drift_datasource.dart';
import '../data/repositories/todo_repositories.dart';
import '../blocs/todos/todo_bloc.dart';
import 'package:http/http.dart' as http;

import '../domain/usercases/get_todo.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // External
  sl.registerLazySingleton(() => http.Client());

  // Data Sources
  sl.registerLazySingleton(() => AppDatabase());
  sl.registerLazySingleton<DriftDataSource>(
    () => DriftDataSource(sl<AppDatabase>()),
  );
  sl.registerLazySingleton<ApiDataSource>(
    () => ApiDataSource(sl<http.Client>()),
  );

  // Repository
  sl.registerLazySingleton<ToDoRepositories>(
    () => ToDoRepositoryImpl(
      apiDataSource: sl<ApiDataSource>(),
      localDataSource: sl<DriftDataSource>(),
    ),
  );

  // Use Cases
  sl.registerLazySingleton(() => GetToDos(sl<ToDoRepositories>()));
  sl.registerLazySingleton(() => UpdateToDo(sl<ToDoRepositories>()));
  sl.registerLazySingleton(() => DeleteTodo(sl<ToDoRepositories>()));

  // Bloc
  sl.registerFactory(
    () => ToDoBloc(sl<GetToDos>(), sl<UpdateToDo>(), sl<DeleteTodo>()),
  );
}
